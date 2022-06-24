`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2022 12:40:40
// Design Name: 
// Module Name: add
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


module add(a,b,c,clk);
input [31:0] a,b;//a=32'b00111111100011111000000000110100,b=32'b00111111100101101000011100101011;
output reg [31:0] c=0;
input clk;
reg [31:0] a1,b1,a_copy,b_copy;
reg [7:0] x;
reg [23:0] sum;



always@(posedge clk )
begin
if(b>a)
begin
a1=a;
a_copy=a;  
b1=b;
b_copy=b;
end
if(a>b)
begin
a1=b;
a_copy=b;
b1=a;
b_copy=a;
end
x=b1[30:23]-a1[30:23];

if(x==0)
begin
c[30:23]=a1[30:23]+1;
sum=a1[22:0]+b1[22:0];
c[22:0]=sum[23:1];
end

if(x==1)
begin
a1[22]=1;
a1[21:0]=a_copy[22:1];
end

if(x==2)
begin
a1[22]=0;
a1[21]=1;
a1[20:0]=a_copy[22:2];
end

if(x==3)
begin
a1[22]=0;
a1[21]=0;
a1[20]=1;
a1[19:0]=a_copy[22:3];
end

if(x==4)
begin
a1[22:20]=0;
a1[19]=1;
a1[18:0]=a_copy[22:4];
end

if(x==5)
begin
a1[22:19]=0;
a1[18]=1;
a1[17:0]=a_copy[22:5];
end

if(x==6)
begin
a1[22:18]=0;
a1[17]=1;
a1[16:0]=a_copy[22:6];
end

if(x==7)
begin
a1[22:17]=0;
a1[16]=1;
a1[15:0]=a_copy[22:7];
end

if(x==8)
begin
a1[22:16]=0;
a1[15]=1;
a1[14:0]=a_copy[22:8];
end

if(x!=0)
begin
sum=b1[22:0]+a1[22:0];
if(sum[23]==0)
begin
c[22:0]=sum[22:0];
c[30:23]=b1[30:23];
end
if(sum[23]==1)
begin
c[22]=0;
c[21:0]=sum[22:1];
c[30:23]=b1[30:23]+1;
end
end


end




endmodule
