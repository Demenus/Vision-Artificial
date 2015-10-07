function [  ] = ej17(  )

%section a
im = imread('logo.png');

%section b
mr = im(:,:,1);
mg = im(:,:,2);
mb = im(:,:,3);
%We search the specified values for each channel
o1 = find(mr==6);
o2 = find(mg==118);
o3 = find(mb==85);

%section c
%and we change the found ones to red color
mr(o1) = 255;
mg(o2) = 0;
mb(o3) = 0;
%And we create againg the image
im2 = cat(3, mr, mg, mb);

%section d
figure;
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im2);
end

