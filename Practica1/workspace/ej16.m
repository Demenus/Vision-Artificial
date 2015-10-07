function [  ] = ej16(  )
close all;
figure;

%section a
m1 = zeros(500, 500);
m1(:,251:end) = 255;
subplot(2,3,1), imshow(m1);
title('Red channel');
m2 = zeros(500,500);
m2(251:end,:) = 255;
subplot(2,3,2), imshow(m2);
title('Green channel');
m3 = zeros(500,500);
m3(1:250,1:250) = 255;
subplot(2,3,3), imshow(m3);
title('Blue channel');

%section b
m = cat(3, m1, m2, m3);
subplot(2,3,5), imshow(m);
title('Three channels');

%section c
imwrite(m, '3channels.jpg');

%section d
im = imread('altalena.png');

%section e
rm = im(:,:,1);
gm = im(:,:,2);
bm = im(:,:,3);

%section f
figure;
subplot(2,3,1), imshow(rm);
title('Red channel');
subplot(2,3,2), imshow(gm);
title('Green channel');
subplot(2,3,3), imshow(bm);
title('Blue channel');

%section g
o1 = cat(3, rm, gm, bm);
o2 = cat(3, bm, gm, rm);
o3 = cat(3, gm, rm, bm);
subplot(2,3,4), imshow(o1);
title('R,G,B');
subplot(2,3,5), imshow(o2);
title('B,G,R');
subplot(2,3,6), imshow(o3);
title('G,R,B');
end

