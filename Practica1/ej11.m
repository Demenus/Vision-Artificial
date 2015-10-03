function [ output_args ] = ej11(  )
% Section a
im = imread('lena.jpg');
figure;
subplot(1,2,1), imshow(im), title('RGB image');
[n, m ,c] = size(im);
disp(['The size of this image is ', num2str(n), 'x', num2str(m), ' pixels']);
disp(['The image has ', num2str(c), ' different channels']);
imgrey = rgb2gray(im);
subplot(1,2,2), imshow(imgrey), title('Grey scale image');
[ngrey, mgrey, cgrey] = size(imgrey);
disp(['The size of this image is ', num2str(ngrey), 'x', num2str(mgrey), ' pixels']);
disp(['The image has ', num2str(cgrey), ' different channel']);

%Section b
n10 = floor(0.1*n);
m10 = floor(0.1*m);

%Section c
imblack = zeros(n+2*n10,m+2*m10, 'uint8');
imblack(n10:n+n10-1, m10:m+m10-1) = imgrey(:,:);
figure;
subplot(1,2,1), imshow(imblack), title('Black frame');

%section d
imwrite(imblack, 'lena_frame.jpg');

%section e
%Tenemos que crear un borde para cada lado de la imagen y luego engancharlo
%haciendo uso del vercat y el horzcat a la imagen de lena
imred = zeros(n+2*n10, m+2*m10, 3, 'uint8');
imred(:,:,1) = 255;
imred(n10:n+n10-1, m10:m+m10-1,1) = imgrey(:,:);
imred(n10:n+n10-1, m10:m+m10-1,2) = imgrey(:,:);
imred(n10:n+n10-1, m10:m+m10-1,3) = imgrey(:,:);
subplot(1,2,2), imshow(imred), title('Red frame');
imwrite(imred, 'lena_red_frame.jpg');

%section f
end

