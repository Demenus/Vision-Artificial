function [  ] = ej11(  )
close all;
% Section a
%We read the image
im = imread('lena.jpg');
figure;
subplot(1,2,1), imshow(im), title('RGB image');
%And we get the size of the image
[n, m ,c] = size(im);
disp(['The size of this image is ', num2str(n), 'x', num2str(m), ' pixels']);
disp(['The image has ', num2str(c), ' different channels']);
%We convert the image from RGB to gray scale thanks to this specific matlab
%function
imgrey = rgb2gray(im);
subplot(1,2,2), imshow(imgrey), title('Grey scale image');
[ngrey, mgrey, cgrey] = size(imgrey);
disp(['The size of this image is ', num2str(ngrey), 'x', num2str(mgrey), ' pixels']);
disp(['The image has ', num2str(cgrey), ' different channel']);

%Section b
%We calculate the 10% of the image size
n10 = floor(0.1*n);
m10 = floor(0.1*m);

%Section c
%We create the black image
imblack = zeros(n+2*n10,m+2*m10, 'uint8');
%And copy our image inside it
imblack(n10:n+n10-1, m10:m+m10-1) = imgrey(:,:);
figure;
subplot(1,2,1), imshow(imblack), title('Black frame');

%section d
%We save the image
imwrite(imblack, 'lena_frame.jpg');

%section e
%In the first place we need to create an image with 3 channels
imred = zeros(n+2*n10, m+2*m10, 3, 'uint8');
%Set the first channel(Red channel) with its maximun value
imred(:,:,1) = 255;
%Then on every channel we copy our image of lena
imred(n10:n+n10-1, m10:m+m10-1,1) = imgrey(:,:);
imred(n10:n+n10-1, m10:m+m10-1,2) = imgrey(:,:);
imred(n10:n+n10-1, m10:m+m10-1,3) = imgrey(:,:);
subplot(1,2,2), imshow(imred), title('Red frame');
imwrite(imred, 'lena_red_frame.jpg');

%section f
%The top border with size 10% of original image and m for width
btop = zeros(n10, m, 'uint8');
im2 = vertcat(btop, imgrey);
%Bottom border
bbot = zeros(n10, m, 'uint8');
im2 = vertcat(im2, bbot);
%We get the size of the image with the top and bottom border added
[n2, m2] = size(im2);
blef = zeros(n2, m10, 'uint8');
%creation of left and right border
im2 = horzcat(blef, im2);
brig = zeros(n2, m10, 'uint8');
im2 = horzcat(im2, brig);
figure; imshow(im2);
title('Image created with vertcat and horzcat');
end

