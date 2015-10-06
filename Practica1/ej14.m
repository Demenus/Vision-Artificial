function [output_args]=ej14()

close all;
% section a
im = imread('circles.bmp');
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

figure; 
subplot(1,3,1); imshow(im1);
subplot(1,3,2); imshow(im2);
subplot(1,3,3); imshow(im3);

% section c
im1(im1==0)=255;
im1(imgrey==0)=0;

im2(im2==0)=255;
im2(imgrey==127)=127;

im3(im3==0)=255;
im3(imgrey==195)=195;

%section d
im1 = create_border(im1, 10, 127);
im2 = create_border(im2, 10, 127);
im3  = create_border(im3, 10, 127);
tot = cat(2, im1, im2, im3);
figure; imshow(tot);

end