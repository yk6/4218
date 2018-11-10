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

   assign value = tx_tmp[node_count][count];

   reg done;
   reg [3:0] node_count;
   reg [3:0] count;
   reg [3:0] max_cnt;
   reg [3:0] max_node;

   function [31:0] Multiply;
    input [31:0] a;
    input [31:0] b;
    reg [31:0] _temp;

    begin
      assign _temp = a[15:0] * b[15:0];
      assign Multiply = _temp[23:8];
      // assign Multiply = _temp[47:16];
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

  // function [31:0] Sigmoid;
  //   input a;
  //   reg [31:0] _out;


  //   begin
  //     if () 
  //     begin
        


  //     end
  //   end
  // endfunction
  //  function [31:0] Multiply;  //32bit
  //   input [31:0] a;
  //   input [31:0] b;
  //   reg _sign;
  //   reg [31:0] _dec;
  //   reg [31:0] _int;
  //   reg [31:0] _dec2;
  //   reg [31:0] _int2;

  //   begin         
  //     if (a[31] ^ b[31])
  //     begin        
  //       // if diff sign        
  //       assign _sign = 1;
  //     end
  //     else
  //     begin
  //       //  if same sign
  //       assign _sign = 0;
  //     end

  //     if ((a == 0 || b == 0))
  //     begin
  //       _int = 0;
  //       _dec = 0;
  //     end
  //     else
  //     begin
  //       assign _int = a[30:16];
  //       assign _int2 = b[30:16];
  //       assign _dec = a[15:0];
  //       assign _dec2 = b[15:0];

  //       if (_dec >= 10000)
  //       begin
  //         assign  _int = _int + (_dec / 10000);
  //         assign _dec = _dec % 10000;
  //       end
  //     end
  //     // 0 is positive, 1 is negative
  //     // 
  //     // A  B   
  //     // 0  0   0
  //     // 0  1   1
  //     // 1  0   1
  //     // 1  1   0
  //     Multiply = {_sign, _int[14:0], _dec[15:0]};
  //   end
  // endfunction

  // function [31:0]Sum;
  //   input [31:0] a;
  //   input [31:0] b;    
  //   reg _sign;
  //   reg [31:0] _int_a;
  //   reg [31:0] _dec_a;
  //   reg [31:0] _int_b;
  //   reg [31:0] _dec_b;
  //   reg [31:0] _int;
  //   reg [31:0] _dec;
  //   reg [31:0] return;

  //   begin
  //     if (a[31] ^ b[31])  // a b diff sign
  //     begin
  //       if (_int_a > _int_b)
  //       begin
  //         if (_dec_a > _dec_b)
  //         begin
  //           _int = _int_a - _int_b;
  //           _dec = _dec_a - _dec_b;
  //         end
  //         else 
  //         begin
  //           _dec = 10000 - (_dec_b - _dec_a);
  //           _int = _int_a - _int_b - 1;
  //         end  
  //       end
  //       else // int a < b
  //       begin
  //         if (_dec_a > _dec_b)
  //         begin
  //           _int = _int_a - _int_b;
  //           _dec = _dec_a - _dec_b;
  //         end
  //         else 
  //         begin
  //           _dec = 10000 - (_dec_b - _dec_a);
  //           _int = _int_a - _int_b - 1;
  //         end 
  //       end
  //     end
  //     else  // a b same sign
  //     begin
  //       _dec = _dec_a + _dec_b;
  //       if (_dec > 10000)
  //       begin
  //         _int = _int_a + _int_b + (_dec / 10000);
  //         _dec = _dec % 10000;
  //       end
  //       else 
  //       begin
  //         _int = _int_a + _int_b;  
  //       end
  //     end

  //     if (a[31] ^ b[31])
  //     begin
  //       if (a[31] == 0)
  //       begin

          
  //       end
  //       else 
  //       begin
          
  //       end
  //     end
  //     else
  //     begin
  //       if (a[31] == 1)
  //       begin
  //         _sign = 1;
  //       end
  //     end

  //   end
  // endfunction

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
              // sign = rx_tmp[node_count][count][31];
              // int = rx_tmp[node_count][count][30:16];
              // dec = rx_tmp[node_count][count][15:0];

              // int = int << 1;
              // dec = dec << 1;

              // if (dec > 14'd10000)
              // begin
              //   int = int + (dec / 10000);
              //   dec = dec % 10000;
              // end

              // // TODO: sign computation

              // tx_tmp[node_count][count][31] = sign;
              // tx_tmp[node_count][count][30:16] = int[14:0];
              // tx_tmp[node_count][count][15:0] = dec[15:0];
              // count <= count - 1;
              //=============================================
              // if (count == 0)
              // begin
              //   node_count <= node_count - 1;
              //   count <= max_cnt;
              // end

              // tested
              tx_tmp[0][0] <= Multiply(rx_tmp[0][0], rx_tmp[0][1]);
              tx_tmp[0][1] <= Sum(rx_tmp[0][0], rx_tmp[0][1]);
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

endmodule
