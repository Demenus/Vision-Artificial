function [  ] = ej18(  )
close all;

%section a
%We open both images and we can see that they have the same size
hand = im2double(imread('hand_rgb.jpg'));
mapfre = im2double(imread('mapfre.jpg'));

%section b
handgray = rgb2gray(hand);

%section c
%We convert into a binary image, so we can get a mask
mask = im2bw(hand, 0.1);
%And we get the inverted mask
maskinv = 1 - mask;
%We create a 3 channel mask image
mask3 = cat(3,mask, mask, mask);
maskinv3 = cat(3,maskinv,maskinv,maskinv);

%section d
%We use the RGB masks created, we can multiply element wise the hand image
%with its mask and the background(mapfre) with the inverted mask
%Using the function times we obtain for instance in 'times(hand, mask3)' the
%pixel value in the hand image or zero, the same to mapfre and the inverted
%mask. We add both matrix and obtain the desired image
res = times(hand, mask3) + times(mapfre, maskinv3);
imshow(res);
imwrite(res, 'hand_mapfre_3C.jpg');
end

