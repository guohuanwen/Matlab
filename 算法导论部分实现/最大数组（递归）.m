%%最大数组问题
function main()
clc
clear all
A=[13 -3 -25  20 -3 -16 -23 18 20 -7 12 -5 -22 15 -4 7];
f2(A,1,length(A))
end 



%%不跨中点，可用递归
function [m l r]=f2(A,min,max)
if min==max
    
else
mid=floor((min+max)/2);
%%左边
f2(A,min,mid);
%%右边
f2(A,mid+1,max);
%%跨过中点
m=f1(A,min,mid,max);
end

end



%%跨过中点
function [max,left,right]=f1(A,min,mid,max)
leftSum=0;
maxleft=0;
for i=mid:min
    leftSum=leftSum+A(1,i);
    if(maxleft<=leftSum)
        maxleft=leftSum;
        left=i;
    end
end
rightSum=0;
maxright=0;
for j=mid:max
    rightSum=rightSum+A(1,j);
    if (maxright<=rightSum)
        maxright=rightSum;
        right=j;
    end
end
max=maxright+maxleft;
end