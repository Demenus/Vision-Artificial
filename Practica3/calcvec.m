    function [v] = calcvec(im)
        [c1, x1] = imhist(im(:,:,1));
        [c2, x1] = imhist(im(:,:,2));
        [c3, x1] = imhist(im(:,:,3));
        v = cat(1,c1, c2, c3);
    end