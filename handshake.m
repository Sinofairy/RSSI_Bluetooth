clc

person=ones(10,4);
for i=1:10
    person(i,1)=i;
end

total=[1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10];       
shake(total,person)

