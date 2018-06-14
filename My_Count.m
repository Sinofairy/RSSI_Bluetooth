function num=My_Count(a)
a=a';
for i=1:10
    b=a(:,i);
    if(length(b)-length(unique(b))>=1)
        num=5;
        return;
    end
end
