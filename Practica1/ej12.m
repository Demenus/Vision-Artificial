function [ output_args ] = ej12()
close all;
N = 2; 
M = 4;
figure;
im = imread('car_lowContrast.jpg');
subplot(N,M,1), imshow(im);
title('Original');
subplot(N,M,5), imhist(im);

%section a
maxval = double(max(max(im)));
im2 = im + (255-maxval);
subplot(N,M,2), imshow(im2);
title('Bright');
subplot(N,M,6), imhist(im2);
imwrite(im2, 'car_bright.jpg');

%section b
minval = double(min(min(im)));
im3 = im - minval;
subplot(N,M,3), imshow(im3);
title('Dark');
subplot(N,M,7), imhist(im3);
imwrite(im3, 'car_dark.jpg');

%section c
%we convert the image to double values, it returns values between 0 and 1
im4 = im2double(im);
minval = min(min(im4));
maxval = max(max(im4));
%The next step is to apply a linear transformation for intervals, we will
%convert [minval, maxval] to [0, 255]
%Check this https://es.wikiversity.org/wiki/Transformaci%C3%B3n_lineal_de_intervalos
im5 = ((255-0)/(maxval-minval))*(im4-minval);
im5 = uint8(im5);
subplot(N, M, 4), imshow(im5);
title('Contrast');
subplot(N, M, 8), imhist(im5);
imwrite(im5, 'car_contrast.jpg');
end

