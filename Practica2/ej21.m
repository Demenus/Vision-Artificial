function [] = ej21(f)
% file is the name of the image
%ej21 This function illustrates the effect of resizing and smoothing with 
%different 1D and 2D masks 
close all;

im=imread(f); 
% e.g. im=imread('./images/cruis.jpg');
imGray=rgb2gray(im);
resizedIm=imresize(imGray, 2);
h=[1 1 1 1 1]; 
% 1D mask defined
h=h/sum(h); 
% normalization
% define the 2D mask, shell we normalize it?
smoothedImGray = imfilter(double(imGray),h);
%convolve with the 2D mask
figure, subplot(3,3,2), imshow(im, []), 
subplot(3,3,4), imshow(imGray),  title('Original grayscale image'),
subplot(3,3,5), imshow(resizedIm),  title('Resized image'),
subplot(3,3,6), imshow(uint8(smoothedImGray)), title('Smothed image'),
subplot(3,3,7), imhist(imGray),  
subplot(3,3,8), imhist(resizedIm),
subplot(3,3,9), imhist(uint8(smoothedImGray));
% add more figures if necessary
end