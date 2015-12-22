function [  ] = ex33(  )
imc = imread('loro.png');
img = rgb2gray(imc);
[n m] = size(img);
X = ones(n*m, 3);
for i=1:n
    X((i-1)*m+1:m*i,1) = i;
    X((i-1)*m+1:m*i,2) = 1:m;
end
for i=1:n*m
    a = X(i,:);
    X(a(2),a(1)) = a(3);
end
%e = reshape(img, n*m, 1);
%X(:,3) = e;
%k = 18
%[idx,c]= kmeans(X,k);
%idx = reshape(idx, n, m);
%cc = hsv(k);
res = zeros(n, m);
for i=1:n*m
    a = X(i,:);
    res(a(2),a(1)) = a(3);
end

imshow(uint8(res));

%plotcluster(X, 4, idx, c);
end

