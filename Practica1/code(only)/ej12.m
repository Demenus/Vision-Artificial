function [ output_args ] = ej12()
close all;
%Constants for subplot
N = 2; 
M = 4;
figure;
im = imread('car_lowContrast.jpg');
subplot(N,M,1), imshow(im);
title('Original');
subplot(N,M,5), imhist(im);

%section a
%We get the max value from image pixels
maxval = double(max(max(im)));
%And we map the max value to 255, and the rest of pixels values will be
%translated 255-maxval. With that we can get a brighter image
im2 = im + (255-maxval);
subplot(N,M,2), imshow(im2);
title('Bright');
subplot(N,M,6), imhist(im2);
imwrite(im2, 'car_bright.jpg');
%We can see we have 'the same histogram shape' in both cases, but in the brighter
%version we can observe that all pixel values has been translated to higher
%values

%section b
%In this section we map the minimun value to 0 and we translate the rest of
%pixels -minval
minval = double(min(min(im)));
im3 = im - minval;
subplot(N,M,3), imshow(im3);
title('Dark');
subplot(N,M,7), imhist(im3);
imwrite(im3, 'car_dark.jpg');
%We can see we have the 'same histogram shape' in both cases, but in the darker
%version we can observe that all pixel values has been translated to lower
%values

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
%In this situation we can see that the histogram has been strenched instead
%of only translated, we have converted the original interval of min and max
%values into [0, 255] interval
end

