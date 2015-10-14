function [  ] = rescale_images( )
files = ['bebe.jpg', 'buffet.jpg'];%, './images/cruis.jpg', './images/halloween.jpg', './images/iwum.jpg', './images/roma.jpg', './images/silla.jpg', './images/spider.gif', './images/suenyo.jpg', './images/tikal.jpg', './images/valencia.jpg'];

figure;
N = length(files);
res = zeros(N);
for i=1:N
    f = files(i);
    im = imread(f);
    res(i) = imresize(im, 2);
    subplot(1, N, i); imshow(res(i));
end

end

