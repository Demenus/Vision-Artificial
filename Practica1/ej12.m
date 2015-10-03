function [ output_args ] = ej12()

im = imread('car.jpg');
figure;
subplot(1,2,1), imhist(im);
maxval = max(max(im));
im2 = im + (255-maxval);
%imshow(im2);
subplot(1,2,2), imhist(im2);

[counts,loc]= imhist(im);

%Section c
im3 = double(im);
im3 = im3*double(maxval)/255.0;
im3 = uint8(im3);
figure, imshow(im3);
figure, imhist(im3);
end

