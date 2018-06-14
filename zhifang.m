sample = imread('10337.jpg');
imshow(sample);
[M,N]=size(sample);
[counts,x]=imhist(sample,32);
counts=counts/M/N;
stem(x,counts);
histeqSample = histeq(sample);
 subplot(2,2,1);
 imshow(sample);  %原始图像
 subplot(2,2,2);
 stem(x,counts);  %原始图像直方图
subplot(2,2,3);
imshow(histeqSample); %均衡化处理后的图像
subplot(2,2,4);
[M,N]=size(histeqSample);
[counts,x]=imhist(histeqSample,32);
counts=counts/M/N;
stem(x,counts); %均衡化处理后图像直方图