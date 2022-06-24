`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2022 17:45:29
// Design Name: 
// Module Name: mul
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


module mul(a,b,c,clk);

output reg [31:0] c;
input [31:0] a,b;
reg [31:0] temp,a_min,b_max;
reg [8:0] expsum;
reg [23:0] a_man,b_man;
reg [47:0] prd_man;
input clk;




always @(posedge clk)
begin

//a= 32'b00111111100011111000000000110100;    //1.1211
//b= 32'b00111111100101101000011100101011;    //1.1760


if(a>b)
begin
a_min=b;
b_max=a;
end
if(b>a)
begin
a_min=a;
b_max=b;
end



c[31]=0;

expsum=a[30:23]+b[30:23]-127;
a_man[23]=1;
a_man[22:0]=a[22:0];
b_man[23]=1;
b_man[22:0]=b[22:0];

prd_man=a_man*b_man;

if(prd_man[47]==1)
begin
c[30:23]=expsum+1;
c[22:0]=prd_man[46:24];
end

if(prd_man[47]==0)
begin
c[30:23]=expsum;
c[22:0]=prd_man[45:23];
end

end



endmodule
