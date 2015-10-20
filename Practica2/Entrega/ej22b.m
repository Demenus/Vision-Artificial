function [  ] = ej22b(  )
close all;

im = imread('./images/halloween.jpg');

im1 = imgaussian(im, 2, 10);
im2 = imgaussian(im, 5, 10);
im3 = imgaussian(im, 10, 10);
im4 = imgaussian(im, 2, 5);
im5 = imgaussian(im, 5, 5);
im6 = imgaussian(im, 10, 5);

figure;
subplot(3,2,1), imshow(im1), title('sigma 2, size 10');
subplot(3,2,3), imshow(im2), title('sigma 5, size 10');
subplot(3,2,5), imshow(im3), title('sigma 10, size 10');
subplot(3,2,2), imshow(im4), title('sigma 2, size 5');
subplot(3,2,4), imshow(im5), title('sigma 5, size 5');
subplot(3,2,6), imshow(im6), title('sigma 10, size 5');

    function O=aux_22(im, sigma, size)
        h = fspecial('gauss', size, sigma);
        O = imfilter(im, h);
    end

im1 = aux_22(im, 2, 10);
im2 = aux_22(im, 5, 10);
im3 = aux_22(im, 10, 10);
im4 = aux_22(im, 2, 5);
im5 = aux_22(im, 5, 5);
im6 = aux_22(im, 10, 5);

figure;
subplot(3,2,1), imshow(im1), title('sigma 2, size 10');
subplot(3,2,3), imshow(im2), title('sigma 5, size 10');
subplot(3,2,5), imshow(im3), title('sigma 10, size 10');
subplot(3,2,2), imshow(im4), title('sigma 2, size 5');
subplot(3,2,4), imshow(im5), title('sigma 5, size 5');
subplot(3,2,6), imshow(im6), title('sigma 10, size 5');
end

