`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2022 10:17:49
// Design Name: 
// Module Name: subt
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


module subt(a,b,c,clk);
input [31:0] a,b;
output reg [31:0] c=0;
reg [7:0] x;//,clk=0;
reg [31:0] a1,b1,a_min,b_max;
input clk;
reg [22:0] temp;
integer i,index;


//always
//#5 clk=~clk;




always @(posedge clk)
begin


if(a>b)
begin
a1=b;
a_min=b;
b1=a;
b_max=a;
end
if(b>a)
begin
a1=a;
a_min=a;
b1=b;
b_max=b;
end




x=b_max[30:23]-a_min[30:23];

if(x==0)
begin
//c[31:23]=a[31:23];
end

if(x==1)
begin
a1[22]=1;
a1[21:0]=a_min[22:1];
end

if(x==2)
begin
a1[22]=0;
a1[21]=1;
a1[20:0]=a_min[22:2];
end

if(x==3)
begin
a1[22]=0;
a1[21]=0;
a1[20]=1;
a1[19:0]=a_min[22:3];
end

if(x==4)
begin
a1[22:20]=0;
a1[19]=1;
a1[18:0]=a_min[22:4];
end

if(x==5)
begin
a1[22:19]=0;
a1[18]=1;
a1[17:0]=a_min[22:5];
end

if(x==6)
begin
a1[22:18]=0;
a1[17]=1;
a1[16:0]=a_min[22:6];
end

if(x==7)
begin
a1[22:17]=0;
a1[16]=1;
a1[15:0]=a_min[22:7];
end

if(x==8)
begin
a1[22:16]=0;
a1[15]=1;
a1[14:0]=a_min[22:8];
end


if(b_max[22:0]==0)
begin
b1[30:23]=b_max[30:23]+1;
b1[22]=1;
b1[21:0]=b_max[22:1];

//if(x~=0)
//begin
a1[21:0]=a1[22:1];
a1[22]=0;
//end
/*
if(x==0)
begin
a1[22]=1;
a1[21:0]=a_min[22:1];
end
*/
end



temp=b1[22:0]-a1[22:0]; 

for(i=0;i<=22;i=i+1)
begin
if(temp[i]==1)
index=i;
end


//c[22:(22-index+1)]=temp[(index-1):0];
//c[30:23]=c[30:23]-(22-index+1);
if(index==22)
begin
c[22:1]=temp[21:0];
c[30:23]=b1[30:23]-1;
end
if(index==21)
begin
c[22:2]=temp[20:0];
c[30:23]=b1[30:23]-2;
end
if(index==20)
begin
c[22:3]=temp[19:0];
c[30:23]=b1[30:23]-3;
end
if(index==19)
begin
c[22:4]=temp[18:0];
c[30:23]=b1[30:23]-4;
end
if(index==18)
begin
c[22:5]=temp[17:0];
c[30:23]=b1[30:23]-(5);
end
if(index==17)
begin
c[22:6]=temp[16:0];
c[30:23]=b1[30:23]-(6);
end
if(index==16)
begin
c[22:7]=temp[15:0];
c[30:23]=b1[30:23]-(7);
end
if(index==15)
begin
c[22:8]=temp[14:0];
c[30:23]=b1[30:23]-(8);
end
if(index==14)
begin
c[22:9]=temp[13:0];
c[30:23]=b1[30:23]-(9);
end
end




endmodule
