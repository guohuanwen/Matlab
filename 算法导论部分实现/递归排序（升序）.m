
%%分治法，递归排序
function main
clear all
clc

A=[4 2 7 5 1 8 6 3];
f2(A,1,length(A))
end



function fenkai=f2(X,a,b)
%%全局变量，递归时T不变
global T;
if a<b
    T=X;
    %%负无穷取整
    c=floor((a+b)/2);
    f2(T,a,c);
    f2(T,c+1,b);
    T=f1(T,a,c,b);
    fenkai=T;
end 
end





function paixu=f1(X,a,b,c)
Q=X(1,a:b)
W=X(1,b+1:c)
i=1;
j=1;
QLength=length(Q);
WLength=length(Q);
k=a;
while(j<=WLength&&i<=QLength)
    if Q(1,i)>W(1,j)
       X(1,k)=W(1,j);
        j=j+1;
        k=k+1;
    else  
        X(1,k)=Q(1,i);
        i=i+1;
        k=k+1;
    end
end
while (j<=WLength&&i>QLength)
    X(1,k)=W(1,j);
    j=j+1;
    k=k+1;
end
while (j>WLength&&i<=QLength)
    X(1,k)=Q(1,i);
    i=i+1;
    k=k+1;
end
paixu=X;
end

