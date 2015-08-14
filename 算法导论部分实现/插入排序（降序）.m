%%从小到大排列，插入排序
clc
clear all;
a=[5 2 4 6 1 3];

for j=2:length(a)
 k=a(1,j);
 i=j-1;
 while (i>0)&&(a(1,i)>=k)
    a(1,i+1)=a(1,i);
    i=i-1;
 end 
 a(1,i+1)=k;
end
a