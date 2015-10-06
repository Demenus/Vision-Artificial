function [o] = my_threshold(th, im)
    o = zeros(size(im));
    o = im(:,:);
    o(o < th) = 0;
    o(o >= th) = 255;
end