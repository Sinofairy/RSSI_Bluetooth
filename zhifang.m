sample = imread('10337.jpg');
imshow(sample);
[M,N]=size(sample);
[counts,x]=imhist(sample,32);
counts=counts/M/N;
stem(x,counts);
histeqSample = histeq(sample);
 subplot(2,2,1);
 imshow(sample);  %ԭʼͼ��
 subplot(2,2,2);
 stem(x,counts);  %ԭʼͼ��ֱ��ͼ
subplot(2,2,3);
imshow(histeqSample); %���⻯������ͼ��
subplot(2,2,4);
[M,N]=size(histeqSample);
[counts,x]=imhist(histeqSample,32);
counts=counts/M/N;
stem(x,counts); %���⻯�����ͼ��ֱ��ͼ