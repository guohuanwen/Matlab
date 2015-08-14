%%²åÈëÅÅÐò£¨£©ÉýÐò
a=[12 34 43 58 49 34 44 22 11];
for j=2:length(a)
    k=a(1,j);
    i=j-1;
    while i>0&&a(1,i)<k
        a(1,i+1)=a(1,i);
        i=i-1;
    end
    a(1,i+1)=k;
end 
a