fn = 'log.txt';
fid = fopen(fn,'r');
R = [];
R1 = [];
while ~feof(fid)
    tl = fgetl(fid);
    id = strfind(tl,'cls_Acc = ');
    if ~isempty(id)
        dt = tl(id+10:id+13);
        %dt = strtok(dt);
        R = [R; str2double(dt)];     
    end;
    
    id1 = strfind(tl,'000, loss = ');
    if ~isempty(id1)
        dt1 = tl(id1+12:id1+15);
        %dt = strtok(dt);
        R1 = [R1; str2double(dt1)]; 
    else
        id1 = strfind(tl,'200, loss = ');
        if ~isempty(id1)
            dt1 = tl(id1+12:id1+15);
            %dt = strtok(dt);
            R1 = [R1; str2double(dt1)]; 
        end
    end;
   
end;
subplot(2,1,1)
plot(R)
title('cls-Acc')
subplot(2,1,2)
plot(R1)
title('loss ')
%disp(R);