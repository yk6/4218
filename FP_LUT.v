module FP_LUT 
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
   localparam NUMBER_OF_INPUT_WORDS  = FP * 3;

   // Total number of output data
   localparam NUMBER_OF_OUTPUT_WORDS = FP;

   // Define the states of state machine
   localparam Idle  = 4'b0001;
   localparam Read_Inputs = 4'b0010;
   localparam Compute = 4'b0100;
   localparam Write_Outputs  = 4'b1000;
   reg [3:0] state;

   // Accumulator to hold sum of inputs read at any point in time

   reg sign[0:10];
   reg [7:0] int[0:10];
   reg [7:0] dec[0:10];
   wire [20:0] value;
   reg [20:0] temp[0:10];

   assign value = temp[count];

   reg done;
   reg [3:0] count;

   // Counters to store the number inputs read & outputs written
   reg [NUMBER_OF_INPUT_WORDS - 1:0] nr_of_reads;
   reg [NUMBER_OF_OUTPUT_WORDS - 1:0] nr_of_writes;

   // CAUTION:
   // The sequence in which data are read in should be
   // consistent with the sequence they are written

   assign S_AXIS_TREADY = (state == Read_Inputs);
   assign M_AXIS_TVALID = (state == Write_Outputs);
   assign M_AXIS_TLAST = (state == Write_Outputs) & (nr_of_writes == 0);

   assign M_AXIS_TDATA = M_AXIS_TVALID?value:0;

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
              done <= 0;
            end
          Read_Inputs:
            if (S_AXIS_TVALID == 1) 
            begin
              if (nr_of_reads == 0) 
              begin
                state <= Compute;
                nr_of_writes <= NUMBER_OF_OUTPUT_WORDS - 1;
              end
              case(nr_of_reads%3)
                0:
                  begin
                    dec[count] <= S_AXIS_TDATA;
                    count <= count + 1;
                    if (nr_of_reads != 0) 
                    begin
                      nr_of_reads <= nr_of_reads - 1;                      
                    end
                  end
                1:
                  begin
                    int[count] <= S_AXIS_TDATA;
                    nr_of_reads <= nr_of_reads - 1;
                  end
                2:
                  begin
                    sign[count] <= S_AXIS_TDATA;
                    nr_of_reads <= nr_of_reads - 1;
                  end
                default:;
              endcase
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
              end      
            end
          Compute:
          begin
              int[count] = int[count] * 2;
              dec[count] = dec[count] * 2;
              if (dec[count] > 8'd100)
              begin
                dec[count] = dec[count] - 8'd100;
                int[count] = int[count] + 1;
              end
              if (count != 0)
              begin                
                temp[count] <= sign[count] << 16 | int[count] << 8 | dec[count];                  
                count <= count - 1;                
              end
              if (count == 0) 
              begin
                done <= 1;
                temp[count] <= sign[count] << 16 | int[count] << 8 | dec[count];
              end
              if (done == 1)
              begin
                state <= Write_Outputs;
                done <= 0;
              end
          end
        endcase
   end

endmodule
