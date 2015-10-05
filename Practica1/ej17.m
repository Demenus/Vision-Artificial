function [  ] = Untitled(  )
im = imread('logo.png');

m1 = im(:,:,1);
m2 = im(:,:,2);
m3 = im(:,:,3);
[N, M] = size(m1);
m11 = reshape(m1,N*M,1);
m22 = reshape(m2,N*M,1);
m33 = reshape(m3,N*M,1);
o1 = find(m11==6);
o2 = find(m22==118);
o3 = find(m33==85);
m11(o1) = 255;
m22(o2) = 0;
m33(o3) = 0;
m1 = reshape(m11, N, M);
m2 = reshape(m22, N, M);
m3 = reshape(m33, N, M);
im2 = cat(3, m1, m2, m3);

figure;
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im2);
end

