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

   reg [10:0] nr_of_reads;
   reg [10:0] nr_of_writes;

   reg signed [31:0] input_number[0:27][0:12];
   reg signed [31:0] weightih[0:13][0:9];
   reg signed [31:0] weightho[0:10];
   reg signed [31:0] hidden_layer[0:27][0:9];
   reg signed [31:0] tempH[0:27][0:12];
   reg signed [31:0] tempO[0:9];
   reg signed [31:0] output_number[0:27];
   wire signed [31:0] value;

   assign value = output_number[pat_count];
   //assign value = input_number[pat_count][input_node_count];
   //assign value = hidden_layer[pat_count][hidden_node_count];
   //assign value = weightih[input_node_count][hidden_node_count];
   //assign value = weightho[hidden_node_count];
   //assign value = tempH[pat_count][input_node_count];

   reg [10:0] num_count;
   reg [4:0] pat_count;
   reg [3:0] input_node_count;
   reg [3:0] hidden_node_count;
   localparam max_pat_count = 28;
   localparam max_input_node = 13;
   localparam max_hidden_node = 10;

   reg [15:0] timer;

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
          timer <= 0;
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
            nr_of_writes <= 27;
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= 0;
          end
          else begin
            nr_of_reads <= nr_of_reads - 1;
            weightho[hidden_node_count] <= S_AXIS_TDATA;
            hidden_node_count <= hidden_node_count + 1;
          end
        end
      Compute_ih:
      begin
        timer <= timer + 1;
        if(pat_count == 28)
        begin
          state <= Compute_ho;
          pat_count <= 0;
          input_node_count <= 0;
          hidden_node_count <= 0;
        end

        else begin

        //======================================
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
              hidden_layer[pat_count][hidden_node_count] <= Sum1(tempH[pat_count][0],tempH[pat_count][1],
                tempH[pat_count][2],tempH[pat_count][3],tempH[pat_count][4],tempH[pat_count][5],tempH[pat_count][6],
                tempH[pat_count][7],tempH[pat_count][8],tempH[pat_count][9],tempH[pat_count][10],tempH[pat_count][11],tempH[pat_count][12]);
              input_node_count <= input_node_count + 1;
            end
            if (input_node_count < 13)
            begin
              tempH[pat_count][0] <= Multiply(weightih[1][hidden_node_count],input_number[pat_count][0]);
              tempH[pat_count][1] <= Multiply(weightih[2][hidden_node_count],input_number[pat_count][1]);
              tempH[pat_count][2] <= Multiply(weightih[3][hidden_node_count],input_number[pat_count][2]);
              tempH[pat_count][3] <= Multiply(weightih[4][hidden_node_count],input_number[pat_count][3]);
              tempH[pat_count][4] <= Multiply(weightih[5][hidden_node_count],input_number[pat_count][4]);
              tempH[pat_count][5] <= Multiply(weightih[6][hidden_node_count],input_number[pat_count][5]);
              tempH[pat_count][6] <= Multiply(weightih[7][hidden_node_count],input_number[pat_count][6]);
              tempH[pat_count][7] <= Multiply(weightih[8][hidden_node_count],input_number[pat_count][7]);
              tempH[pat_count][8] <= Multiply(weightih[9][hidden_node_count],input_number[pat_count][8]);
              tempH[pat_count][9] <= Multiply(weightih[10][hidden_node_count],input_number[pat_count][9]);
              tempH[pat_count][10] <= Multiply(weightih[11][hidden_node_count],input_number[pat_count][10]);
              tempH[pat_count][11] <= Multiply(weightih[12][hidden_node_count],input_number[pat_count][11]);
              tempH[pat_count][12] <= Multiply(weightih[13][hidden_node_count],input_number[pat_count][12]);
              input_node_count <= 13;
            end
          end
        end
      end
      Compute_ho:
      begin
        timer <= timer + 1;
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
            hidden_node_count <= hidden_node_count + 1;
          end
          if (hidden_node_count < 10)
          begin
            tempO[0] <= Multiply(weightho[1],hidden_layer[pat_count][0]);
            tempO[1] <= Multiply(weightho[2],hidden_layer[pat_count][1]);
            tempO[2] <= Multiply(weightho[3],hidden_layer[pat_count][2]);
            tempO[3] <= Multiply(weightho[4],hidden_layer[pat_count][3]);
            tempO[4] <= Multiply(weightho[5],hidden_layer[pat_count][4]);
            tempO[5] <= Multiply(weightho[6],hidden_layer[pat_count][5]);
            tempO[6] <= Multiply(weightho[7],hidden_layer[pat_count][6]);
            tempO[7] <= Multiply(weightho[8],hidden_layer[pat_count][7]);
            tempO[8] <= Multiply(weightho[9],hidden_layer[pat_count][8]);
            tempO[9] <= Multiply(weightho[10],hidden_layer[pat_count][9]);
            hidden_node_count <= 10;
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
