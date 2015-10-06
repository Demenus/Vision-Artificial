function [  ] = ej13(  )
close all;

im = imread('car_gray.jpg');
im2 = my_threshold(130, im);
figure;
subplot(2,2,1), imshow(im);
title('Original');
subplot(2,2,2), imshow(im2);
title('Developed Threshold (130)')

im3 = horzcat(im, im2);
imwrite(im3, 'car_binary.jpg');

im4 = im2bw(im, 130/255);
subplot(2,2,4), imshow(im4);
title('Matlab Threshold Function (130)');
end

