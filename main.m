clc; clear; close all; warning off; 

I=imread('siahosefid.bmp');
%I=imnoise(I, 'gaussian', 0, 0.001);
imshow(I);
I=im2double(I);

[height width R]=size(I);
for i=2:height-1
    for j=2:width-1
       L(i,j)=4*I(i,j)-I(i-1,j)-I(i+1,j)-I(i,j-1)-I(i,j+1);
    
    end
end
figure;
imshow(L,[]);

for i=1:height-1
    for j=1:width-1
        if (L(i,j)<0.2)
            L(i,j)=0;
        else L(i,j)=1;
        end
    end
end
figure(2);
imshow(L,[]);