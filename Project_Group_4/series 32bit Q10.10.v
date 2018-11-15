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
   localparam Idle  = 3'b001;
   localparam Read_Inputs = 3'b010;
   localparam Read_Weightih = 3'b011;
   localparam Read_Weightho = 3'b100;
   localparam Compute_ih = 3'b101;
   localparam Compute_ho = 3'b110;
   localparam Write_Outputs  = 3'b111;
   reg [6:0] state;

   reg [8:0] nr_of_reads;
   reg [4:0] nr_of_writes;

   (* max_fanout = 10 *) reg signed [31:0] input_number[0:27][0:12];
   (* max_fanout = 10 *) reg signed [31:0] weightih[0:13][0:9];
   (* max_fanout = 10 *) reg signed [31:0] weightho[0:10];
   (* max_fanout = 10 *) reg signed [31:0] hidden_layer[0:27][0:9];
   (* max_fanout = 10 *) reg signed [31:0] tempH[0:12];
   (* max_fanout = 10 *) reg signed [31:0] tempO[0:9];
   (* max_fanout = 10 *) reg signed [31:0] output_number[0:28];
   wire signed [31:0] value;

   assign value = output_number[pat_count];
   //assign value = input_number[pat_count][input_node_count];
   //assign value = hidden_layer[pat_count][hidden_node_count];
   //assign value = weightih[input_node_count][hidden_node_count];
   //assign value = weightho[hidden_node_count];
   //assign value = tempH[pat_count][input_node_count];

   reg [4:0] pat_count;
   reg [3:0] input_node_count;
   reg [3:0] hidden_node_count;


function signed [31:0] Multiply;
  input signed [31:0] a;
  input signed [31:0] b;

  begin
  Multiply = a * b / 1024;
  end
endfunction

function signed [31:0] Sum1;
  input signed [31:0] a;
  input signed [31:0] b;
  input signed [31:0] c;
  input signed [31:0] d;
  input signed [31:0] e;
  input signed [31:0] f;
  input signed [31:0] g;
  input signed [31:0] h;
  input signed [31:0] i;
  input signed [31:0] j;
  input signed [31:0] k;
  input signed [31:0] l;
  input signed [31:0] m;

  begin
    Sum1 = a + b + c + d + e + f + g + h + i + j + k + l + m;
  end
endfunction

function signed [31:0] Sum2;
  input signed [31:0] a;
  input signed [31:0] b;
  input signed [31:0] c;
  input signed [31:0] d;
  input signed [31:0] e;
  input signed [31:0] f;
  input signed [31:0] g;
  input signed [31:0] h;
  input signed [31:0] i;
  input signed [31:0] j;

  begin
    Sum2 = a + b + c + d + e + f + g + h + i + j;
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


assign S_AXIS_TREADY = (state == Read_Inputs) | (state == Read_Weightih) | (state == Read_Weightho);
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
   state <= Idle;
   pat_count <= 0;
   input_node_count <= 0;
   hidden_node_count <= 0;
  end
      /************** state machines **************/
  else
    case (state)
      Idle:
        if (S_AXIS_TVALID == 1)
        begin
          nr_of_reads <= 363;
          state <= Read_Inputs;
          pat_count <= 0;
          input_node_count <= 0;
          hidden_node_count <= 0;
        end

      Read_Inputs:
        if (S_AXIS_TVALID == 1) 
        begin
          if (nr_of_reads == 0)
          begin
            state <= Read_Weightih;
            nr_of_reads <= 139;
            pat_count <= 0;
            input_node_count <= 0;
            input_number[pat_count][input_node_count] <= S_AXIS_TDATA;
          end      
          else begin
            nr_of_reads <= nr_of_reads - 1;
            input_number[pat_count][input_node_count] <= S_AXIS_TDATA;
            if (input_node_count == 12)
            begin
              pat_count <= pat_count + 1;
              input_node_count <= 0;
            end
            if (input_node_count != 12)
              input_node_count <= input_node_count + 1;
          end
        end      

      Read_Weightih:
        if (S_AXIS_TVALID == 1)
        begin
          if (nr_of_reads == 0)
          begin
            state <= Read_Weightho;
            weightih[input_node_count][hidden_node_count] <= S_AXIS_TDATA;
            input_node_count <= 0;
            hidden_node_count <= 0;
            nr_of_reads <= 10;
          end
          else begin
            nr_of_reads <= nr_of_reads - 1;
            weightih[input_node_count][hidden_node_count] <= S_AXIS_TDATA;
            if (hidden_node_count == 9)
             begin
              input_node_count <= input_node_count + 1;
              hidden_node_count <= 0;
            end
            if (hidden_node_count != 9)
              hidden_node_count <= hidden_node_count + 1;
          end
        end

      Read_Weightho:
        if (S_AXIS_TVALID == 1)
        begin
          if (nr_of_reads == 0)
          begin
            state <= Compute_ih;
            nr_of_writes <= 28;
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= 0;
            output_number[28] <= 0;
          end
          else begin
            nr_of_reads <= nr_of_reads - 1;
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= hidden_node_count + 1;
          end
        end

      Compute_ih:
      begin
        output_number[28] <= output_number[28] + 1;
        if(pat_count == 28)
        begin
          state <= Compute_ho;
          pat_count <= 0;
          input_node_count <= 0;
          hidden_node_count <= 0;
        end

        else begin
          if (hidden_node_count == 10)
          begin
            hidden_node_count <= 0;
            pat_count <= pat_count + 1;
          end
          if (hidden_node_count != 10)
          begin
            if (input_node_count == 15)
            begin
              hidden_node_count <= hidden_node_count + 1;
              input_node_count <= 0;
              hidden_layer[pat_count][hidden_node_count] <= Sigmoid_PLAN(hidden_layer[pat_count][hidden_node_count]);
            end
            if (input_node_count == 14)
            begin
               hidden_layer[pat_count][hidden_node_count] <= weightih[0][hidden_node_count] + hidden_layer[pat_count][hidden_node_count];
               input_node_count <= input_node_count + 1;
            end
            if (input_node_count == 13)
            begin
              hidden_layer[pat_count][hidden_node_count] <= Sum1(tempH[0],tempH[1],tempH[2],tempH[3],tempH[4],tempH[5],tempH[6],tempH[7],tempH[8],
                tempH[9],tempH[10],tempH[11],tempH[12]);
              input_node_count <= input_node_count + 1;
            end
            if (input_node_count < 13)
            begin
              tempH[input_node_count] <= Multiply(weightih[input_node_count+1][hidden_node_count],input_number[pat_count][input_node_count]);
              input_node_count <= input_node_count + 1;
            end
          end
        end
      end

      Compute_ho:
      begin
        output_number[28] <= output_number[28] + 1;
        if(pat_count == 28)
        begin
          state <= Write_Outputs;
          pat_count <= 0;
          hidden_node_count <= 0;
        end
        else begin
          if (hidden_node_count == 11)
          begin
            pat_count <= pat_count + 1;
            hidden_node_count <= 0;
            output_number[pat_count] <= Sigmoid_PLAN(output_number[pat_count]);
          end
          if (hidden_node_count == 10)
          begin            
            output_number[pat_count] <=weightho[0] + Sum2(tempO[0],tempO[1],tempO[2],tempO[3],tempO[4],tempO[5],tempO[6],tempO[7],tempO[8],tempO[9]);
          end
          if (hidden_node_count < 10)
          begin
            tempO[hidden_node_count] <= Multiply(weightho[hidden_node_count+1],hidden_layer[pat_count][hidden_node_count]);
            hidden_node_count <= hidden_node_count + 1;
          end
        end
      end

      Write_Outputs:
        if (M_AXIS_TREADY == 1) 
          begin
            if (nr_of_writes == 0)
              state <= Idle;  

              else begin
                nr_of_writes <= nr_of_writes - 1;
                pat_count <= pat_count + 1;
              end
          end
    endcase
end
endmodule