clc
clear all

obj = VideoReader('D://sokespace.mp4');
obj_numberofframe = obj.NumberOfFrame;%读取总的帧数
obj_height = obj.Height;%读取视频帧高度
obj_width = obj.Width;
fps = obj.FrameRate;

out=VideoWriter('out','MPEG-4');
out.FrameRate = fps;
open(out)
for index=1:obj_numberofframe
    frame = read(obj,index);%获取该视频对象的制定帧
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
