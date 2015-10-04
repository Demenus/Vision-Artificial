function [output_args]= ej15 ()
%This function reads a color image and displays its channels
close all;
im=imread('sillas.jpg');
imR = im(:,:,1);
imG = im(:,:,2);
imB = im(:,:,3);
figure;
subplot(3,3,1),imshow(imR),title('Red Channel');
subplot(3,3,2),imshow(imG),title('Green Channel');
subplot(3,3,3),imshow(imB),title('Blue Channel');
o1=cat(3,imG,imB,imR);
o2=cat(3,imB,imR,imG);
subplot(3,3,4),imshow(im),title('R,G,B(Original Image)');
subplot(3,3,5),imshow(o1),title('G,B,R');
subplot(3,3,6),imshow(o2),title('B,R,G');
o3=cat(3,imR*0,imG,imB);
subplot(3,3,8),imshow(o3),title('R*0,G,B');
end