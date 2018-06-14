clc
clear all

obj = VideoReader('D://sokespace.mp4');
obj_numberofframe = obj.NumberOfFrame;%��ȡ�ܵ�֡��
obj_height = obj.Height;%��ȡ��Ƶ֡�߶�
obj_width = obj.Width;
fps = obj.FrameRate;

out=VideoWriter('out','MPEG-4');
out.FrameRate = fps;
open(out)
for index=1:obj_numberofframe
    frame = read(obj,index);%��ȡ����Ƶ������ƶ�֡
    for i=920:960
        for j=300:540
            frame(i,j,1)=5;
            frame(i,j,2)=5;
            frame(i,j,3)=5;
        end
    end
     writeVideo(out, frame);
end
close(out);
