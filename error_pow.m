MAE=0.001;
count=0;
lp=0;
rp=1;
temp=0;
j=1;
k=1;
A=zeros(1,136);
B=zeros(1,136);
C=zeros(1,1322);
D=zeros(1,1322);
E=zeros(1,1322);
F=zeros(1,1322);

format long

while(lp~=1)
    for i=count:1:2^23
        if(i/2^23>=lp && i/2^23<rp) 
           y= pow2 (lp) + (i/2^23-lp)*(pow2 (rp)-pow2 (lp))/(rp-lp);
              if(abs(y-pow2 (i/2^23))>MAE)
               flag=0;
               
               break
              
              else
               flag=1;
               temp=i/2^23;
               
              end
       
           
           
        end
    end
if(flag==0)
%if((lp+rp)/2<)
rp=(lp+rp)/2;

end

if(flag==1)
A(1+count)=lp;
B=pow2 (A);
%B(1+count)=rp;
lp=rp;
rp=1;
count=count+1;
end

end







i=0;

 while(j~=136)
        if(  (i/2^11) >= A(j) && (i/2^11) < A(j+1) ) 
           C(k)=((B(j+1)-B(j))/(A(j+1)-A(j)))*(i/2^11-A(j))+B(j);
           D(k)=pow2(i/2^11);
           E(k)=(C(k)-D(k));
           F(k)=i/2^11;
             k=k+1;
             i=i+1;
        else
            j=j+1;
        end
 
 end


plot(F,E)





