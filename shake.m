function shake(total,person)
if(length(total)==1)
    person(40)=total(1);
    if(My_Count(person)~=5)
        person
        return
    end
else
    for i=1:length(total)
        person(41-length(total))=total(i);
        total(i)=[];
        shake(person,total);
    end
end
    