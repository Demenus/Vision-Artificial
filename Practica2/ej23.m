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

