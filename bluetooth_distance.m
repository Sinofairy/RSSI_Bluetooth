clc
clear all

B=dlmread('rssi_2018032701.txt');
[m,n]=size(B);
 for i=1:m
     num=1;
     temp=0;
     while B(i,num)~=0
         temp=temp+B(i,num);
          num=num+1;
          if num==n+1
              break
          end
     end
     RSSI(i)=temp/(num-1);
 end
 
%  RSSI(3)=-32;
%  RSSI(4)=-33;
%  RSSI(5)=-34;
%  RSSI(6)=-35;
 plot(RSSI)
 xlabel('距离/m')
 ylabel('信号强度/dBm')
 title('信号强度随距离的变化')
 hold on
 one=ones(1,m);
 d=1:1:m;
 lgd=-10*log10(d);
 %lgd=lgd';
 B=RSSI(1:m);
 B=B';
 H=[one;lgd];
 H=H';
 X=inv(H'*H)*H'*B;
 A=X(1);
 n=X(2);
 i=1:1:m;
 RS=A-10*n*log10(i);
 plot(RS)
 X
         
         

        