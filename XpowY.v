`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2022 12:28:25
// Design Name: 
// Module Name: XpowY
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


module XpowY(clk);
wire [31:0] ip1,ip2;
wire [31:0] op1,op2,op3,op4,op5,op6,op;
wire [31:0] out;
input clk;

//reg clk=0;
//always 
//#5 clk=~clk;

always@(posedge clk)
begin
//ip1=32'b01000001010000000000000000000000;  //12
//ip2=32'b01000000110000000000000000000000;  //6

//ip1=32'b01000000011000000000000000000000;  //3.5
//ip2=32'b01000000001000000000000000000000;  //2.5
//out=in6.c;
end

vio_0 vio_name (
  .clk(clk),                // input wire clk
  .probe_in0(out),    // input wire [31 : 0] probe_in0
  .probe_out0(ip1),  // output wire [31 : 0] probe_out0
  .probe_out1(ip2)  // output wire [31 : 0] probe_out1
);

log2 in1(ip1,op1,clk);
mul in2(ip2,op1,op2,clk);
fracfp_mod in3(op2,op3,op4,clk);
power_2_int in4(op3,op5,clk);
pow2 in5(op4,op6,clk);
mul in6(op5,op6,out,clk);



endmodule
