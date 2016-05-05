
%% π”√imread√¸¡Ó∂¡»°Õº∆¨°£      
I = imread('qwer.png');
I = imresize(I,[50,50]);
grayI = rgb2gray(I);
imshow(grayI);
[m,n]=size(grayI);
pp = cell(m,n);
for i = (1:1:m)
    for j = (1:1:n)
        if (grayI(i,j)<30)
            pp{i,j}= '®Ä';
        elseif (grayI(i,j)<60)
            pp{i,j}= '®~';
        elseif (grayI(i,j)<90)
            pp{i,j}= '®}';
        elseif (grayI(i,j)<120)
            pp{i,j}= '®|';
        elseif (grayI(i,j)<150)
            pp{i,j}= '®{';
        elseif (grayI(i,j)<180)
            pp{i,j}= '®z';
        elseif (grayI(i,j)<210)
            pp{i,j}= '®y';
        elseif (grayI(i,j)<240)
            pp{i,j}= '®x';
        else
            pp{i,j}= '.';
        end
    end
end

pp

%®x®y®z®{®|®}®~®Ä %