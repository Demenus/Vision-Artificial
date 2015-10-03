function [  ] = ej18(  )
close all;
hand = im2double(imread('hand_rgb.jpg'));
mapfre = im2double(imread('mapfre.jpg'));

handgray = rgb2gray(hand);
mask = im2bw(hand, 0.1);
maskinv = 1 - mask;
mask3 = cat(3,mask, mask, mask);
maskinv3 = cat(3,maskinv,maskinv,maskinv);

res = times(hand, mask3) + times(mapfre, maskinv3);
imshow(res);
imwrite(res, 'hand_mapfre_3C.jpg');
end

