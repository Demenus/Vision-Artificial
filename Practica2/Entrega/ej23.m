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
subplot(2, 5, 1); imshow(highim1);
subplot(2, 5, 2); imshow(lowim2);

out = highim1 + lowim2;
subplot(2, 5, 3); imshow(out);

out1 = impyramid(out, 'reduce');
out2 = impyramid(out1, 'reduce');

subplot(2,5,4), imshow(out1);
subplot(2,5,5), imshow(out2);


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

subplot(2, 5, 6); imshow(highimh);
subplot(2, 5, 7); imshow(lowimc);

out = highimh + lowimc;
subplot(2, 5, 8); imshow(out);

out1 = impyramid(out, 'reduce');
out2 = impyramid(out1, 'reduce');

subplot(2,5,9), imshow(out1);
subplot(2,5,10), imshow(out2);
end

