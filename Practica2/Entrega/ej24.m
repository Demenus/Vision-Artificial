function [  ] = ej24(  )
close all;

N = 4;
M = 5;
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
%Prewitt
imp = edge (im,'prewitt',0.03);

figure;
subplot(N, M, 1); imshow(1-ims,[]); title('Sobel');
subplot(N, M, 6); imshow(1-iml,[]); title('LAG');
subplot(N, M, 11); imshow(1-imc1,[]); title('Canny');
subplot(N, M, 16); imshow(1-imp,[]); title('Prewitt');

%section b
imbaby = imread('.\images\bebe.jpg');
imbabygray = rgb2gray(imbaby);
imbabys=edge(imbabygray,'sobel');
imbabylapl=fspecial('log');
imbabyl=imfilter(imbabygray,imbabylapl);
imbabyc = edge(imbabygray,'canny');
imbabyp = edge (imbabygray,'prewitt');
subplot(N, M, 2); imshow(1-imbabys,[]); title('Sobel');
subplot(N, M, 7); imshow(1-imbabyl,[]); title('LAG');
subplot(N, M, 12); imshow(1-imbabyc,[]); title('Canny');
subplot(N, M, 17); imshow(1-imbabyp,[]); title('Prewitt');


imcruis = imread('.\images\cruis.jpg');
imcruisgray = rgb2gray(imcruis);
imcruiss=edge(imcruisgray,'sobel');
imcruislapl=fspecial('log');
imcruisl=imfilter(imcruisgray,imcruislapl);
imcruisc = edge(imcruisgray,'canny');
imcruisp = edge (imcruisgray,'prewitt');
subplot(N, M, 3); imshow(1-imcruiss,[]); title('Sobel');
subplot(N, M, 8); imshow(1-imcruisl,[]); title('LAG');
subplot(N, M, 13); imshow(1-imcruisc,[]); title('Canny');
subplot(N, M, 18); imshow(1-imcruisp,[]); title('Prewitt');


imroma = imread('.\images\roma.jpg');
imromagray = rgb2gray(imroma);
imromas=edge(imromagray,'sobel');
imromalapl=fspecial('log');
imromal=imfilter(imromagray,imromalapl);
imromac = edge(imromagray,'canny');
imromap = edge (imromagray,'prewitt');
subplot(N, M, 4); imshow(1-imromas,[]); title('Sobel');
subplot(N, M, 9); imshow(1-imromal,[]); title('LAG');
subplot(N, M, 14); imshow(1-imromac,[]); title('Canny');
subplot(N, M, 19); imshow(1-imromap,[]); title('Prewitt');


imtikal = imread('.\images\tikal.jpg');
imtikalgray = rgb2gray(imtikal);
imtikals=edge(imtikalgray,'sobel');
imtikallapl=fspecial('log');
imtikall=imfilter(imtikalgray,imtikallapl);
imtikalc = edge(imtikalgray,'canny');
imtikalp = edge (imtikalgray,'prewitt');
subplot(N, M, 5); imshow(1-imtikals,[]); title('Sobel');
subplot(N, M, 10); imshow(1-imtikall,[]); title('LAG');
subplot(N, M, 15); imshow(1-imtikalc,[]); title('Canny');
subplot(N, M, 20); imshow(1-imtikalp,[]); title('Prewitt');
end

