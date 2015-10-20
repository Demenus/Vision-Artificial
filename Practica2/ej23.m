function [ ] = ej23(  )
close all;
im1 = imread('./images/Einstein.jpg');
im2 = imread ('./images/Monro.jpg');

h1 = fspecial('gaussian',20,10);  
h2 = fspecial('gaussian', 15, 18);

lowim1 = imfilter(im1, h1);
highim1 = im1 - lowim1;
lowim2 = imfilter(im2, h2);

figure; 
subplot(2, 3, 1); imshow(highim1);
subplot(2, 3, 2); imshow(lowim2);

out = highim1 + lowim2;
subplot(2, 3, 3); imshow(out);

%optional
imh = imread('./images/hamster.jpg');
imc = imread ('./images/cobaya.jpg');

[n,m,d]=size(imh);
[nc,mc,dc] = size(imc);
imc = imc(:,1:m,:);
imh = imh(1:nc,:,:);

h3 = fspecial('gaussian',50,10);  
h4 = fspecial('gaussian', 15, 18);

lowimh = imfilter(imh, h3);
highimh = imh - lowimh;
lowimc = imfilter(imc, h4);

subplot(2, 3, 4); imshow(highimh);
subplot(2, 3, 5); imshow(lowimc);

out2 = highimh + lowimc;
subplot(2, 3, 6); imshow(out2);


end

