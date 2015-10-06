function [  ] = ej17(  )
im = imread('logo.png');

mr = im(:,:,1);
mg = im(:,:,2);
mb = im(:,:,3);
o1 = find(mr==6);
o2 = find(mg==118);
o3 = find(mb==85);
mr(o1) = 255;
mg(o2) = 0;
mb(o3) = 0;
im2 = cat(3, mr, mg, mb);

figure;
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im2);
end

