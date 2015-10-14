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
subplot(3,3,4), imshow(imGray),  
subplot(3,3,5), imshow(resizedIm),
subplot(3,3,6), imshow(uint8(smoothedImGray)),
subplot(3,3,7), imhist(imGray),  
subplot(3,3,8), imhist(resizedIm),
subplot(3,3,9), imhist(uint8(smoothedImGray));
% add more figures if necessary
end

function [ ] = ej23(  )
im1 = imread('./images/Einstein.jpg');
im2 = imread ('./images/Monro.jpg');

hsize = 20;
sigma = 30;

h1 = fspecial('gaussian',15,10);  
h2 = fspecial('gaussian', 15, 18);

lowim1 = imfilter(im1, h1);
%lowim1 = imfilter(lowim1, h1);
highim1 = im1 - lowim1;
lowim2 = imfilter(im2, h2);

figure; 
subplot(1, 3, 1); imshow(highim1);
subplot(1, 3, 2); imshow(lowim2);

out = highim1 + lowim2;
subplot(1, 3, 3); imshow(out);
end

