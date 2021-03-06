`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/16 11:53:22
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test(

    );
	reg ACLK, ARESETN;
    reg [31:0]S_AXIS_TDATA;
    reg S_AXIS_TVALID, M_AXIS_TREADY, S_AXIS_TLAST;
    wire [31:0]M_AXIS_TDATA;
    wire M_AXIS_TVALID, S_AXIS_TREADY;

    myip_v1_0 dut(ACLK,
        ARESETN,
        S_AXIS_TREADY,
        S_AXIS_TDATA,
        S_AXIS_TLAST,
        S_AXIS_TVALID,
        M_AXIS_TVALID,
        M_AXIS_TDATA,
        M_AXIS_TLAST,
        M_AXIS_TREADY);

    initial begin
        ACLK = 0;
        #3;
        ARESETN = 0;
        #20; 
        ARESETN = 1; 
        M_AXIS_TREADY = 1;
        #8;
        S_AXIS_TVALID = 1;
        #10;
        S_AXIS_TDATA = 32'hffffffe;
        #8;
        S_AXIS_TDATA = 32'hfffffe;
        #10;
        S_AXIS_TVALID = 0;
    end

    always begin
    	#5; ACLK = ~ACLK;
    end
        
        
endmodule
