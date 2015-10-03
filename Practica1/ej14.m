function [output_args]=ej14()

close all;
% section a
im = imread('circles.bmp');
figure;
[n,m,c]=size(im);
imgrey = rgb2gray(im);
%imtool(imgrey);

% section b
im1 = zeros (n,m,'uint8');
im1(imgrey==0)=255;

im2 = zeros (n,m,'uint8');
im2(imgrey==127)=255;

im3 = zeros (n,m,'uint8');
im3(imgrey==195)=255;

% section c
im1(im1==0)=255;
im1(imgrey==0)=0;

im2(im2==0)=255;
im2(imgrey==127)=127;

im3(im3==0)=255;
im3(imgrey==195)=195;

%section d


end