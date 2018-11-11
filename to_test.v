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
input   signed    [31 : 0]     S_AXIS_TDATA;   // Data in
input                          S_AXIS_TLAST;   // Optional data in qualifier
input                          S_AXIS_TVALID;  // Data in is valid
// master out interface
output                         M_AXIS_TVALID;  // Data out is valid
output  signed   [31 : 0]      M_AXIS_TDATA;   // Data Out
output                         M_AXIS_TLAST;   // Optional data out qualifier
input                          M_AXIS_TREADY;  // Connected slave device is ready to accept data out


   // Define the states of state machine
   localparam Idle  = 7'b0000001;
   localparam Read_Inputs = 7'b0000010;
   localparam Read_Weightih = 7'b0000100;
   localparam Read_Weightho = 7'b0001000;
   localparam Compute_ih = 7'b0010000;
   localparam Compute_ho = 7'b0100000;
   localparam Write_Outputs  = 7'b1000000;
   reg [6:0] state;


   reg signed [31:0] input_number[0:27][0:12];
   reg signed [31:0] weightih[0:12][0:9];
   reg signed [31:0] weightho[0:9];
   reg signed [31:0] hidden_layer[0:27][0:9];
   reg signed [31:0] output_number[0:27];
   wire signed [31:0] value;

   assign value = output_number[pat_count];

   reg [4:0] pat_count;
   reg [3:0] input_node_count;
   reg [3:0] hidden_node_count;
   localparam max_pat_count = 27;
   localparam max_input_node = 12;
   localparam max_hidden_node = 9;

   function signed [31:0] Multiply;
    input signed [31:0] a;
    input signed [31:0] b;
    begin
    Multiply = a * b / 1024;
    end
  endfunction

function signed [31:0] Sum;
  input signed [31:0] a;
  input signed [31:0] b;

  begin
    Sum = a + b;
  end
endfunction


function signed [31:0] Sigmoid_PLAN;
  input signed [31:0] a;

  begin
    if (a > 5120)          // 5<a assign 1
      Sigmoid_PLAN = 1024;
    else if (a > 2432)     //  2.375<a<=5 assign 0.03125a + 0.84375
      Sigmoid_PLAN = (a / 32)  + 864;
    else if (a > 1024)     //  1<a<=2.375 assign 0.125a + 0.625
      Sigmoid_PLAN = (a / 8) + 640;
    else if (a > -1024)    // -1<a<=1 assign 0.25a + 0.5
      Sigmoid_PLAN = (a / 4) + 512;
    else if (a > -2432)    //  -2.375<a<=-1 assign 0.125a + 0.375
      Sigmoid_PLAN = (a / 8) + 384;
    else if(a > - 5120)   //  -5<a<=-2.375 assign 0.03125a + 0.15625
      Sigmoid_PLAN = (a / 32)  + 160;
    else                  //   a<=-5 assign 0
      Sigmoid_PLAN = 0;
  end
endfunction


assign S_AXIS_TREADY = (state == (Read_Inputs || Read_Weightih || Read_Weightho));
assign M_AXIS_TVALID = (state == Write_Outputs);
assign M_AXIS_TLAST = (state == Write_Outputs) & (pat_count == max_pat_count);

assign M_AXIS_TDATA = M_AXIS_TVALID ? value : 0;

always @(posedge ACLK) 
begin
  /****** Synchronous reset (active low) ******/
  if (!ARESETN)
  begin
    // CAUTION: make sure your reset polarity is consistent with the
    // system reset polarity
   state        <= Idle;
   pat_count  <= 0;
   input_node_count <= 0;
   hidden_node_count <= 0;
  end
      /************** state machines **************/
  else
    case (state)
      Idle:
        if (S_AXIS_TVALID == 1)
        begin
          state <= Read_Inputs;
          pat_count <= 0;
          input_node_count <= 0;
        end

      Read_Inputs:
        if (S_AXIS_TVALID == 1) 
        begin
          if ((pat_count == max_pat_count) && (input_node_count == max_input_node) ) 
          begin
            state <= Read_Weightih;
            input_number[pat_count][input_node_count] <= S_AXIS_TDATA;
            pat_count <= 0;
            input_node_count <= 0;
          end      
        else begin
            input_number[pat_count][input_node_count] <= S_AXIS_TDATA;
            if (input_node_count != max_input_node)
              input_node_count <= input_node_count + 1;
            else begin
              pat_count <= pat_count + 1;
              input_node_count <= 0;
            end
          end
        end

      Read_Weightih:
        if (S_AXIS_TVALID == 1)
        begin
          if ((input_node_count == max_input_node) && (hidden_node_count == max_hidden_node))
          begin
            state <= Read_Weightho;
            weightih[input_node_count][hidden_node_count] <= S_AXIS_TDATA;
            input_node_count <= 0;
            hidden_node_count <= 0;
          end
          else begin
            weightih[input_node_count][hidden_node_count] <= S_AXIS_TDATA;
            if (hidden_node_count != max_hidden_node)
              hidden_node_count <= hidden_node_count + 1;
            else begin
              input_node_count <= input_node_count + 1;
              hidden_node_count <= 0;
            end
          end
        end

      Read_Weightho:
        if (S_AXIS_TVALID == 1)
        begin
          if (hidden_node_count == max_hidden_node)
          begin
            state <= Compute_ih;
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= 0;
          end
          else begin
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= hidden_node_count + 1;
          end
        end

      Compute_ih:
      begin
        if(pat_count == (max_pat_count + 1))
        begin
          state <= Compute_ho;
          pat_count <= 0;
          input_node_count <= 0;
          hidden_node_count <= 0;
        end
        else begin
          if (hidden_node_count == (max_hidden_node + 1))
          begin
            hidden_node_count <= 0;
            pat_count <= pat_count + 1;
          end
          else begin       
            if (input_node_count == (max_input_node + 1))
            begin
              hidden_layer[pat_count][hidden_node_count] <= Sigmoid_PLAN(hidden_layer[pat_count][hidden_node_count]);
              hidden_node_count <= hidden_node_count + 1;
              input_node_count <= 0;
            end
            else begin
              hidden_layer[pat_count][hidden_node_count] <= hidden_layer[pat_count][hidden_node_count] + 
              Multiply(weightih[input_node_count][hidden_node_count],input_number[pat_count][input_node_count]);
              input_node_count <= input_node_count + 1;
            end
          end
        end
      end

      Compute_ho:
      begin
        if(pat_count == (max_pat_count + 1))
        begin
          state <= Write_Outputs;
          pat_count <= 0;
          hidden_node_count <= 0;
        end
        else begin
          if (hidden_node_count == (max_hidden_node + 1))
          begin
            pat_count <= pat_count + 1;
            hidden_node_count <= 0;
            output_number[pat_count] <= Sigmoid_PLAN(output_number[pat_count]);
          end
          else begin
            output_number[pat_count] <= output_number[pat_count] + 
            Multiply(weightho[hidden_node_count],hidden_layer[pat_count][hidden_node_count]);
            hidden_node_count <= hidden_node_count + 1;
          end
        end
      end

      Write_Outputs:
        if (M_AXIS_TREADY == 1) 
        begin
          if (pat_count == max_pat_count)
            state <= Idle;                   
          else begin
            pat_count <= pat_count + 1;
          end      
        end
    endcase
end
endmodule
