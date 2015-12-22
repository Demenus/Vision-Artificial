function [  ] = prueba2(  )
close all;
imc = imread('loro.png');
img = rgb2gray(imc);
[n m] = size(img);
M = zeros(n, m, 3);
for i=1:n
    for j=1:m
        M(i,j,1) = i;
        M(i,j,2) = j;
        M(i,j,3) = img(i,j);
    end
end
a = M(:,:,1);
b = M(:,:,2);
c = M(:,:,3);
a = reshape(a,n*m,1);
b = reshape(b,n*m,1);
c = reshape(c,n*m,1);
X = cat(2,a,b,c);

[idx, c] = kmeans(X,32);

res = zeros(n, m);
for i=1:n*m
    a = X(i,:);
    res(a(1),a(2)) = floor(255/32*idx(i));
end

imshow(uint8(res));

end

