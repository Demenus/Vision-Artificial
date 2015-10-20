function [  ] = ej24b(  )
close all;
N = 4;
M = 2;

imtikal = imread('.\images\halloween.jpg');
imtikalgray = rgb2gray(imtikal);
imtikals=edge(imtikalgray,'sobel');
imtikallapl=fspecial('log');
imtikall=imfilter(imtikalgray,imtikallapl);
imtikalc = edge(imtikalgray,'canny');
imtikalp = edge (imtikalgray,'prewitt');
figure;
subplot(N, M, 1); imshow(1-imtikals,[]); title('Sobel');
subplot(N, M, 3); imshow(1-imtikall,[]); title('LAG');
subplot(N, M, 5); imshow(1-imtikalc,[]); title('Canny');
subplot(N, M, 7); imshow(1-imtikalp,[]); title('Prewitt');

imtikal = imread('.\images\halloween.jpg');
h = fspecial('gauss',10,10);
imtikal = imfilter(imtikal, h);
imtikalgray = rgb2gray(imtikal);
imtikals=edge(imtikalgray,'sobel');
imtikallapl=fspecial('log');
imtikall=imfilter(imtikalgray,imtikallapl);
imtikalc = edge(imtikalgray,'canny');
imtikalp = edge (imtikalgray,'prewitt');
subplot(N, M, 2); imshow(1-imtikals,[]); title('Sobel');
subplot(N, M, 4); imshow(1-imtikall,[]); title('LAG');
subplot(N, M, 6); imshow(1-imtikalc,[]); title('Canny');
subplot(N, M, 8); imshow(1-imtikalp,[]); title('Prewitt');
end

