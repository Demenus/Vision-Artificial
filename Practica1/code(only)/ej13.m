function [  ] = ej13(  )
close all;

%section a and b
im = imread('car_gray.jpg');
%We call the implemented function called 'my_threshold' with a value of 130
im2 = my_threshold(130, im);
figure;
subplot(2,2,1), imshow(im);
title('Original');
subplot(2,2,2), imshow(im2);
title('Developed Threshold (130)')
%With different values of threshold we can observe we can set the limit
%value to create two differents groups of data.
%This can be useful to separate, for instance, a dark zone from a brighter
%zone

%section c
im3 = horzcat(im, im2);
imwrite(im3, 'car_binary.jpg');

%section d
im4 = im2bw(im, 130/255);
subplot(2,2,4), imshow(im4);
title('Matlab Threshold Function (130)');
end

