`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2022 12:21:46
// Design Name: 
// Module Name: int_fracfp
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


module fracfp_mod(ip,int,fracfp,clk) ;

input [31:0] ip; //=32'b01000001001001001100110011001101;
input clk;
reg [31:0] intfp=0;
output reg [31:0] int,fracfp=0;
integer i,k;
reg [23:0] man_1;

always@(posedge clk)
begin
man_1[23]=1;
man_1[22:0]=ip[22:0];

if ((ip[30:23]-127) ==1)
begin 

intfp [30:23]=127+1;
intfp[22]=ip[22];
int=man_1[23:22];

for(i=0;i<=21;i=i+1) 
begin 
if(ip[i] ==1)
k=i;
end

if(k==21)
begin 
fracfp[30:23]=127-1;
fracfp[22:2] =ip[20:0];
end

if(k==20)
begin 
fracfp[30:23]=127-2;
fracfp[22:3] =ip[19:0];
end

if(k==19)
begin 
fracfp[30:23]=127-3;
fracfp[22:4] =ip[18:0];
end

if(k==18)
begin 
fracfp[30:23]=127-4;
fracfp[22:5] =ip[17:0];
end

if(k==17)
begin 
fracfp[30:23]=127-5;
fracfp[22:6] =ip[16:0];
end

if(k==16)
begin 
fracfp[30:23]=127-6;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-7;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-8;
fracfp[22:9] =ip[13:0];
end

if(k==13)
begin 
fracfp[30:23]=127-9;
fracfp[22:10] =ip[12:0];
end


end

if ((ip[30:23]-127) ==2)
begin 
intfp[30:23]=127+2;
intfp[22:21]=ip[22:21];
int=man_1[23:21];

for(i=0;i<=20;i=i+1)
begin 
if(ip[i]==1)
k=i;
end

if(k==20)
begin 
fracfp[30:23]=127-1;
fracfp[22:3] =ip[19:0];
end

if(k==19)
begin 
fracfp[30:23]=127-2;
fracfp[22:4] =ip[18:0];
end

if(k==18)
begin 
fracfp[30:23]=127-3;
fracfp[22:5] =ip[17:0];
end

if(k==17)
begin 
fracfp[30:23]=127-4;
fracfp[22:6] =ip[16:0];
end

if(k==16)
begin 
fracfp[30:23]=127-5;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-6;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-7;
fracfp[22:9] =ip[13:0];
end
end 

if ((ip[30:23]-127) ==3)
begin 

intfp[30:23]=127+3;
intfp[22:20]=ip[22:20];
int=man_1[23:20];

for(i=0;i<=19;i=i+1)
begin 
if(ip[i]==1)
k=i;
end

if(k==19)
begin 
fracfp[30:23]=127-1;
fracfp[22:4] =ip[18:0];
end

if(k==18)
begin 
fracfp[30:23]=127-2;
fracfp[22:5] =ip[17:0];
end

if(k==17)
begin 
fracfp[30:23]=127-3;
fracfp[22:6] =ip[16:0];
end

if(k==16)
begin 
fracfp[30:23]=127-4;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-5;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-6;
fracfp[22:9] =ip[13:0];
end

if(k==13)
begin 
fracfp[30:23]=127-7;
fracfp[22:10] =ip[12:0];
end
end

if ((ip[30:23]-127) ==4)
begin 

intfp[30:23]=127+4;
intfp[22:19]=ip[22:19];
int=man_1[23:19];

for(i=0;i<=18;i=i+1)
begin 
if(ip[i]==1)
k=i;
end

if(k==18)
begin 
fracfp[30:23]=127-1;
fracfp[22:5] =ip[17:0];
end

if(k==17)
begin 
fracfp[30:23]=127-2;
fracfp[22:6] =ip[16:0];
end

if(k==16)
begin 
fracfp[30:23]=127-3;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-4;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-5;
fracfp[22:9] =ip[13:0];
end

if(k==13)
begin 
fracfp[30:23]=127-6;
fracfp[22:10] =ip[12:0];
end
end

if ((ip[30:23]-127) ==5)
begin 

intfp[30:23]=127+5;
intfp[22:18]=ip[22:18];
int=man_1[23:18];

for(i=0;i<=17;i=i+1)
begin 
if(ip[i]==1)
k=i;
end

if(k==17)
begin 
fracfp[30:23]=127-1;
fracfp[22:6] =ip[16:0];
end

if(k==16)
begin 
fracfp[30:23]=127-2;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-3;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-4;
fracfp[22:9] =ip[13:0];
end

if(k==13)
begin 
fracfp[30:23]=127-5;
fracfp[22:10] =ip[12:0];
end
end

if ((ip[30:23]-127) ==6)
begin 

intfp[30:23]=127+6;
intfp[22:17]=ip[22:17];
int=man_1[23:17];

for(i=0;i<=16;i=i+1)
begin 
if(ip[i]==1)
k=i;
end

if(k==16)
begin 
fracfp[30:23]=127-1;
fracfp[22:7] =ip[15:0];
end

if(k==15)
begin 
fracfp[30:23]=127-2;
fracfp[22:8] =ip[14:0];
end

if(k==14)
begin 
fracfp[30:23]=127-3;
fracfp[22:9] =ip[13:0];
end

if(k==13)
begin 
fracfp[30:23]=127-4;
fracfp[22:10] =ip[12:0];
end
end

end

endmodule
