function [output_args]= ej15 ()
%This function reads a color image and displays its channels
close all;
im=imread('sillas.jpg');
imR = im(:,:,1);
imG = im(:,:,2);
imB = im(:,:,3);
figure;
subplot(3,3,2),imshow(imR),title('Red Channel');
subplot(3,3,3),imshow(imG),title('Green Channel');
subplot(3,3,4),imshow(imB),title('Blue Channel');

imshow(imG);
end