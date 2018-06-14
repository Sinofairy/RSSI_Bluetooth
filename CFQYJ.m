clc
clear all

%%%%%%%%%%%%%%---�����ѹ�Ʋ��---%%%%%%%%%%%%%%%%%

B=dlmread('tempe_20180321_01.txt');
[m,n]=size(B);

for i=1:m
    lon(i)=B(i,1);
    lat(i)=B(i,2);
    ati(i)=B(i,3);
    acc(i)=B(i,4);
    pas(i)=B(i,5);
    tem(i)=B(i,6);
    hei(i)=B(i,7);
    dat(i)=B(i,8);
    tim(i)=B(i,9);
end

subplot(2,2,1)
plot(ati)
title('GPS����')

subplot(2,2,2)
plot(acc)
title('GPS��λ����')

subplot(2,2,3)
plot(pas)
title('��ѹ')

subplot(2,2,4)
plot(tem)
title('�¶�')