function [ output_args ] = ej17(  )
close all;

im = imread('logo.jpg');
[r,c,v]=find(im,6);
im(v)=255;
im(find(im,6))=255;
im(find(im,118))=255;
im(find(im,85))=255;
figure,imshow(im);
end

