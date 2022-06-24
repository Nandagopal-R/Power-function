`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2022 11:30:48
// Design Name: 
// Module Name: power_2_int
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


module power_2_int(int,p2int,clk);
input [31:0] int;
input clk;
output reg [31:0] p2int;

always@(posedge clk)
begin
p2int[31]=0;
p2int[22:0]=0;
if(int==1)
p2int[30:23]=127+1;
if(int==2)
p2int[30:23]=127+2;
if(int==3)
p2int[30:23]=127+3;
if(int==4)
p2int[30:23]=127+4;
if(int==5)
p2int[30:23]=127+5;
if(int==6)
p2int[30:23]=127+6;
if(int==7)
p2int[30:23]=127+7;
if(int==8)
p2int[30:23]=127+8;
if(int==9)
p2int[30:23]=127+9;
if(int==10)
p2int[30:23]=127+10;
if(int==11)
p2int[30:23]=127+11;
if(int==12)
p2int[30:23]=127+12;
if(int==13)
p2int[30:23]=127+13;
if(int==14)
p2int[30:23]=127+14;
if(int==15)
p2int[30:23]=127+15;
if(int==16)
p2int[30:23]=127+16;
if(int==17)
p2int[30:23]=127+17;
if(int==18)
p2int[30:23]=127+18;
if(int==19)
p2int[30:23]=127+19;
if(int==20)
p2int[30:23]=127+20;
if(int==21)
p2int[30:23]=148;
end

endmodule
