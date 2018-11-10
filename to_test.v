  module myip_v1_0 
  (
      // DO NOT EDIT BELOW THIS LINE ////////////////////
      ACLK,
      ARESETN,
      S_AXIS_TREADY,
      S_AXIS_TDATA,
      S_AXIS_TLAST,
      S_AXIS_TVALID,
      M_AXIS_TVALID,
      M_AXIS_TDATA,
      M_AXIS_TLAST,
      M_AXIS_TREADY
      // DO NOT EDIT ABOVE THIS LINE ////////////////////
    );

  input                          ACLK;    // Synchronous clock
  input                          ARESETN; // System reset, active low
  // slave in interface
  output                         S_AXIS_TREADY;  // Ready to accept data in
  input      [31 : 0]            S_AXIS_TDATA;   // Data in
  input                          S_AXIS_TLAST;   // Optional data in qualifier
  input                          S_AXIS_TVALID;  // Data in is valid
  // master out interface
  output                         M_AXIS_TVALID;  // Data out is valid
  output     [31 : 0]            M_AXIS_TDATA;   // Data Out
  output                         M_AXIS_TLAST;   // Optional data out qualifier
  input                          M_AXIS_TREADY;  // Connected slave device is ready to accept data out
      
     // number of data
     localparam FP = 2; 

     // Total number of input data.
     localparam NUMBER_OF_INPUT_WORDS  = FP;

     // Total number of output data
     localparam NUMBER_OF_OUTPUT_WORDS = FP;

     // Define the states of state machine
     localparam Idle  = 4'b0001;
     localparam Read_Inputs = 4'b0010;
     localparam Compute = 4'b0100;
     localparam Write_Outputs  = 4'b1000;
     reg [3:0] state;

     // Accumulator to hold sum of inputs read at any point in time

     reg sign;                // 31th
     reg [31:0] int;          // 30th to 16th
     reg [31:0] dec;          // 15:0
     reg [31:0] rx_tmp[0:10][0:13];
     reg [31:0] tx_tmp[0:10][0:13];   
     wire [31:0] value;

     reg [31:0] _temp;

     assign value = tx_tmp[node_count][count];

     reg done;
     reg [3:0] node_count;
     reg [3:0] count;
     reg [3:0] max_cnt;
     reg [3:0] max_node;

     function [31:0] Multiply;
      input [31:0] a;
      input [31:0] b;
      reg [31:0] _out;

      begin
        assign _out = a[15:0] * b[15:0];
        assign Multiply = _out[23:8];
      end
    endfunction

    function [31:0] Sum;
      input [31:0] a;
      input [31:0] b;
      reg [31:0] _out;

      begin
        Sum = _out[15:0];
      end
    endfunction

    function [31:0] Modulus;
      input[31:0] a;
      reg [31:0] _out;

      begin
        assign _out = a[15:0];
        if (_out[15] == 1)
        begin
          assign _out = ~(_out - 16'h1);
        end
        assign Modulus = _out & 16'hffff;
      end
    endfunction

    function [31:0] Sigmoid_PLAN;
      input [31:0]a;
      reg [31:0] _out;

      begin

        assign _out = Modulus(a);

        if (_out >= 16'h500)       // >=5 assign 1
        begin
          assign _out = 16'h100;
        end
        else
        begin
          if (_out >= 16'h260)     //  >=2.375 assign 0.03125x + 0.84375
          begin
            assign _out = (_out >> 5) + 16'hd8;
          end
          else
          begin
            if (_out >= 16'h100)   // >=1 assign 0.125x + 0.625
            begin
              assign _out = (_out >> 3) + 16'ha0;
            end
            else 
            begin
              if (_out >= 16'h0)   // >=0 assign 0.25x + 0.5
              begin
                assign _out = (_out >> 2) + 16'h80;
              end
            end
          end
        end

        assign Sigmoid_PLAN = (_out & 16'hffff);

      end
    endfunction

     // Counters to store the number inputs read & outputs written
     reg [NUMBER_OF_INPUT_WORDS - 1:0] nr_of_reads;
     reg [NUMBER_OF_OUTPUT_WORDS - 1:0] nr_of_writes;

     // CAUTION:
     // The sequence in which data are read in should be
     // consistent with the sequence they are written

     assign S_AXIS_TREADY = (state == Read_Inputs);
     assign M_AXIS_TVALID = (state == Write_Outputs);
     assign M_AXIS_TLAST = (state == Write_Outputs) & (nr_of_writes == 0);

     assign M_AXIS_TDATA = M_AXIS_TVALID ? value : 0;

     always @(posedge ACLK) 
     begin
        /****** Synchronous reset (active low) ******/
        if (!ARESETN)
          begin
             // CAUTION: make sure your reset polarity is consistent with the
             // system reset polarity
             state        <= Idle;
             nr_of_reads  <= 0;
             nr_of_writes <= 0;
          end
        /************** state machines **************/
        else
          case (state)
            Idle:
              if (S_AXIS_TVALID == 1)
              begin
                state       <= Read_Inputs;
                nr_of_reads <= NUMBER_OF_INPUT_WORDS - 1;
                count <= 0;
                node_count <= 0;
                done <= 0;
              end
            Read_Inputs:
              if (S_AXIS_TVALID == 1) 
              begin
                if (nr_of_reads == 0) 
                begin
                  state <= Compute;
                  nr_of_writes <= NUMBER_OF_OUTPUT_WORDS - 1;
                  rx_tmp[node_count][count] <= S_AXIS_TDATA;
                  max_cnt <= count;
                  max_node <= node_count;
                end
                else 
                begin
                  rx_tmp[node_count][count] <= S_AXIS_TDATA;
                  count <= count + 1;
                  nr_of_reads <= nr_of_reads - 1;
                  // if (count == 12)
                  // begin
                  //   count <= 0;
                  //   node_count <= node_count + 1;
                  // end
                end
              end
            Write_Outputs:
              if (M_AXIS_TREADY == 1) 
              begin
                if (nr_of_writes == 0)
                begin
                  state <= Idle;                   
                end
                else begin
                  nr_of_writes <= nr_of_writes - 1;
                  count <= count + 1;
                  if (count == max_cnt)
                  begin
                    count <= 0;
                    node_count <= node_count + 1;
                  end
                end      
              end
            Compute:
            begin
              if (done != 1) 
              begin
               
                // tested
                // tx_tmp[0][0] <= Multiply(rx_tmp[0][0], rx_tmp[0][1]);
                // tx_tmp[0][1] <= Sum(rx_tmp[0][0], rx_tmp[0][1]);               
                // tx_tmp[0][0] <= Sigmoid_PLAN(rx_tmp[0][0]);                
                //======================================================


                count <= 0;

                if ((count == 0) && (node_count == 0))
                begin
                  done <= 1;
                end
              end
              else 
              begin
                state <= Write_Outputs;
                count <= 0; 
              end
            end
          endcase
     end

     // always @ (in)
     // begin

     //   case(in)

     // end

  endmodule
