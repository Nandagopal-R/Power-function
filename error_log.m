MAE=0.001;
count=0;
lp=1;
rp=2;
temp=0;
j=1;
k=1;
A=zeros(1,132);
B=zeros(1,132);
C=zeros(1,1322);
D=zeros(1,1322);
E=zeros(1,1322);
F=zeros(1,1322);

format long

while(lp~=2)
    for i=count:1:2^11
        if(1+i/2^11>=lp && 1+i/2^11<rp) 
           y= log2 (lp) + (1+i/2^11-lp)*(log2 (rp)-log2 (lp))/(rp-lp);
              if(abs(y-log2 (1+i/2^11))>MAE)
               flag=0;
               
               break
              
              else
               flag=1;
               temp=1+i/2^11;
               
              end
       
           
           
        end
    end
if(flag==0)
%if((lp+rp)/2<)
if(lp==rp)
    rp=2;
end
if(lp~=rp)
rp=(lp+rp)/2;
end

end

if(flag==1)
A(1+count)=lp;
B=log2 (A);
%B(1+count)=rp;
lp=rp;
rp=2;
count=count+1;
end

end



i=0;

 while(j~=132)
        if(  (1+i/2^11) >= A(j) && (1+i/2^11) < A(j+1) ) 
           C(k)=((B(j+1)-B(j))/(A(j+1)-A(j)))*(1+i/2^11-A(j))+B(j);
           D(k)=log2(1+i/2^11);
           E(k)=(D(k)-C(k));
           F(k)=1+i/2^11;
             k=k+1;
             i=i+1;
        else
            j=j+1;
        end
 
 end


%plot(F,E)

plot(A,B)

hold on

plot(F,D)

holf off





