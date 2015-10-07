function [output_args]= ej15 ()
%This function reads a color image and displays its channels
close all;
%We obtain all the channels
im=imread('sillas.jpg');
imR = im(:,:,1);
imG = im(:,:,2);
imB = im(:,:,3);
figure;
subplot(3,3,1),imshow(imR),title('Red Channel');
subplot(3,3,2),imshow(imG),title('Green Channel');
subplot(3,3,3),imshow(imB),title('Blue Channel');
%We join together all the images in different order
o1=cat(3,imG,imB,imR);
o2=cat(3,imB,imR,imG);
subplot(3,3,4),imshow(im),title('R,G,B(Original Image)');
subplot(3,3,5),imshow(o1),title('G,B,R');
subplot(3,3,6),imshow(o2),title('B,R,G');
%We set the red channel to 0
o3=cat(3,imR*0,imG,imB);
subplot(3,3,8),imshow(o3),title('R*0,G,B');
%If we change the order of channels, we can see a variety of different
%images between the original one and the other ones.
%We can observe a change of colors of image, for instance, if we set the
%red channel to 0 its equivalent to remove all red from the image
end