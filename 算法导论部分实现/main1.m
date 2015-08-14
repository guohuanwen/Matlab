%%堆排序
function main1()
clear all
clc
A=[16 14 10 8 7 9 3 2 4 1];
B=heapSort(A,length(A))
dbstop if error
end

%%任意节点的父节点
function y=parent(x)
y=floor(x/2);
end

%%任意节点的左子节点
function y=left(x)
y=2*x;
end

%%任意节点的右子节点
function y=right(x)
y=2*x+1;
end 


function Y=maxHeapify(A,i,aHeapSize)
aHeapSize
l=left(i);
r=right(i);
if l<=aHeapSize&&A(1,l)>A(1,i)
    largest=l;
else
    largest=i;
end
if r<=aHeapSize&&A(1,r)>A(1,largest)
    largest=r;
end
if largest~=i
    bb=A(1,i);
    A(1,i)=A(1,largest);
    A(1,largest)=bb;
    maxHeapify(A,largest,aHeapSize);
end
Y=A;
end

%%生成最大堆
function Y=buildMaxHeap(A,aLength)
aLength
for i=parent(aLength):1
    A=maxHeapify(A,i,aLength);
end
Y=A;
end

%%最大堆排序
function Y=heapSort(A,aHeapSize)
A=buildMaxHeap(A,length(A))
i=length(A);
while(i>=2)
    bb=A(1,1);
    A(1,1)=A(1,i);
    A(1,i)=bb;
    aHeapSize=aHeapSize-1;
    A=buildMaxHeap(A,aHeapSize)
    i=i-1;
end
Y=A;
end
