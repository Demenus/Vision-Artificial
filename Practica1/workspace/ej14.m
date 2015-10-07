function [output_args]=ej14()

close all;

% section a
im = imread('circles.bmp');
[n,m,c]=size(im);
imgrey = rgb2gray(im);

% section b
%We create all the zeros matrices and set the pixels to 255 only for the pixel
%color values found in the original image
%With this function we can create a mask for every circle
im1 = zeros(n,m,'uint8');
im1(imgrey==0) = 255;
im2 = zeros(n,m,'uint8');
im2(imgrey==127) = 255;
im3 = zeros(n,m,'uint8');
im3(imgrey==195) = 255;
%we show the images
figure; 
subplot(1,3,1); imshow(im1);
subplot(1,3,2); imshow(im2);
subplot(1,3,3); imshow(im3);

% section c
im11 = zeros(n,m,'uint8'); im11(:,:)=255;
im22 = zeros(n,m,'uint8'); im22(:,:)=255;
im33 = zeros(n,m,'uint8'); im33(:,:)=255;
%We use the mask to set the value of marked pixels
im11(im1==255) = 0;
im22(im2==255) = 127;
im33(im3==255) = 195;

%section d
%We create the border for each image and cat all of them together
im1 = create_border(im11, 10, 127);
im2 = create_border(im22, 10, 127);
im3  = create_border(im33, 10, 127);
tot = cat(2, im1, im2, im3);
figure; imshow(tot);

end