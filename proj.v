module lab333333333333_v1_0//myip_v1_0 
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


   // Total number of input data.
   localparam NUMBER_OF_INPUT_WORDS  = 2;

   // Total number of output data
   localparam NUMBER_OF_OUTPUT_WORDS = 2;

   // Define the states of state machine
   localparam Idle  = 4'b0100;
   localparam Read_Inputs = 4'b0010;
   localparam Write_Outputs  = 4'b0001;
   localparam Computing = 4'b1000;

   reg [3:0] state;

   // Accumulator to hold sum of inputs read at any point in time
   reg [31:0] sum;

   // Counters to store the number inputs read & outputs written
   reg [NUMBER_OF_INPUT_WORDS - 1:0] nr_of_reads;
   reg [NUMBER_OF_OUTPUT_WORDS - 1:0] nr_of_writes;

   // CAUTION:
   // The sequence in which data are read in should be
   // consistent with the sequence they are written

   assign S_AXIS_TREADY = (state == Read_Inputs);
   assign M_AXIS_TVALID = (state == Write_Outputs);
   assign M_AXIS_TLAST = (state == Write_Outputs) & (nr_of_writes == 0);

   assign M_AXIS_TDATA = sum;


   // added variables
   reg [63:0] result = 0;
   reg [31:0] temp1 = 0;
   reg [31:0] temp2 = 0;
   reg done = 0;
   reg read = 0;
   reg send = 0;
   reg [4:0]count = 31; 

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
           sum          <= 0;
           temp1        <= 0;
           temp2        <= 0;
           result       <= 0;
        end
      /************** state machines **************/
      else
        case (state)
          Idle:
            if (S_AXIS_TVALID == 1)
            begin
              state       <= Read_Inputs;
              nr_of_reads <= NUMBER_OF_INPUT_WORDS - 1;
              sum         <= 0;
            end

          Read_Inputs:
            if (S_AXIS_TVALID == 1) 
            begin
              // --- Coprocessor function happens below --- //
              //sum  <=  sum + S_AXIS_TDATA;
              if (!read) begin
                temp1 <= S_AXIS_TDATA;
                read <= 1;
              end else begin
                temp2 <= S_AXIS_TDATA;
                read <= 0;
              end
              // --- Coprocessor function happens above --- //
              if (nr_of_reads == 0)
                begin
                  state        <= Computing; //Computing;
                  nr_of_writes <= NUMBER_OF_OUTPUT_WORDS - 1;
                end
              else
                nr_of_reads <= nr_of_reads - 1;
            end

          Write_Outputs:
            if (M_AXIS_TREADY == 1) 
            begin
              if (!send) begin
                sum <= result >> 32;
                // sum <= result;
                send <= 1;
              end else begin
                sum <= result & 32'hFFFFFFFF;
                // sum <= temp2;
                send <= 0;
              end
              if (nr_of_writes == 0) 
                 state <= Idle;
              else
                 nr_of_writes <= nr_of_writes - 1;
            end
          Computing:
            if (!done) begin
              result <= temp1 * temp2;
              // result = temp2[0] ? (result + temp1): result;
              // temp2 = temp2 >> 1;
              // temp2[31] = result[0];
              // result = result >> 1;
              // count <= count - 1;
              // if (count == 0) begin
              //   done <= 1;
              //   count <= 31;
              // end
            end else begin
              state <= Write_Outputs;
              // done <= 0;
            end
        endcase
   end

endmodule