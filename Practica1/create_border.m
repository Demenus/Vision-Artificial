function [o] = create_border(im, percent, color)
    [n, m] = size(im);
    p = percent/100;
    n10 = floor(p*n);
    m10 = floor(p*m);
    o = zeros(n+2*n10,m+2*m10, 'uint8');
    o(:,:) = color;
    o(n10:n+n10-1, m10:m+m10-1) = im(:,:);
end