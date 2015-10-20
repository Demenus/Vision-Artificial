function [  ] = ej21c(  )
close all;

im = imread('./images/bebe.jpg');
h1 = [[1 1 1 1 1], [1, 1, 1, 1, 1]];
h2 = [[1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]];
h1 = h1/sum(h1);
h2 = h2/sum(h2);

imf1 = imfilter(im, h1);
imf2 = imfilter(im, h2);
imf3 = im;
for i = 1:4
    imf3 = imfilter(imf3, h1);
end

figure;
subplot(1,3,1), imshow(imf1), title('Small mask');
subplot(1,3,2), imshow(imf2), title('Big mask');
subplot(1,3,3), imshow(imf3), title('Small mask applied 4 times');

end

