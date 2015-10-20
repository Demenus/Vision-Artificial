function [  ] = ej24(  )
close all;

N = 4;
M = 2;
imoriginal = imread('starbuck.jpg');
im = rgb2gray(imoriginal);
%sobel
ims=edge(im,'sobel');
%Laplacian of a gaussian
Lapl=fspecial('log');
iml=imfilter(im,Lapl);
%Canny
imc1 = edge(im,'canny',0.2,1);
imc2 = edge(im,'canny',0.2,2);

figure;
subplot(N, M, 1); imshow(1-ims,[]); title('Sobel');
subplot(N, M, 3); imshow(1-iml,[]); title('Laplacian of a gaussian');
subplot(N, M, 5); imshow(1-imc1,[]); title('Canny sigma 1 thr 0.2');
subplot(N, M, 7); imshow(1-imc2,[]); title('Canny sigma 2 thr 0.2');

end

