%% 4.1.2

F=makeLMfilters();

img = imread('texturesimages\forest\forest_9.jpg');
img_g = rgb2gray(img);

for k=1:size(F,3);
        subplot(8,7,k);
        imagesc(conv2(double(img_g),F(:,:,k)));colorbar;
end

subplot(8,7,53);
imshow(img);
