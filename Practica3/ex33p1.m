function [  ] = ex33(  )
close all;
imc = imread('loro.png');
img = rgb2gray(imc);
[n m] = size(img);

    
    function [v] = repelems(maxn, num)
        %Simple function to create a vector such as
        %[1 1..(num)..1 2 2..(num)..2 ... maxn ..(num)..maxn]
        %For example, if we call repelems(4,2) we will obtain
        %[1 1 2 2 3 3 4 4]
        x=(1:maxn)';
        r=repmat(x,1,num)';
        v=r(:)';
    end

    function [] = section_ab()
        %section a
        figure;
        %We save the gray scale data from the image in a vector
        X = ones(n*m, 2);
        X(:,1) = reshape(img, 1, n*m)';
        X(:,2) = reshape(img, 1, n*m)';
        %We run kmeans over this vector, expecting 5 clusters
        [idx, c] = kmeans(X, 5);
        res = zeros(n,m,'uint8');
        %We create a result image where we set as representative
        %value for each cluster its centroid
        res(:) = floor(c(idx(:),1));
        subplot(1, 3, 1); imshow(img); title('Original');
        subplot(1, 3, 2); imshow(res); title('5 clusters, only gray values');
        
        %section b
        %We create another matrix for saving the data which will be used by
        %the kmeans method
        X = ones(n*m, 3);
        %We run over rows
        X(:,1) = repmat(1:n, 1, m)';
        %We fix the column for every row traversal
        X(:,2) = repelems(m, n);
        %We copy the gray value for all pixels
        X(:,3) = reshape(img, 1, n*m)';
        [idx, c] = kmeans(X, 100);
        res = zeros(n,m,'uint8');
        res(:) = floor(c(idx(:),3));
        subplot(1, 3, 3); imshow(res); title('100 clusters, with pixel coordinates');
    end

section_ab();

    function [] = section_cdef()
        figure;
        subplot(2,2,1); imshow(imc); title('Original');
        subplot(2,2,2); plotPixelDistribution(imc,0.5); title('Distribution of pixels');
        %We create the neccesary vector for kmeans
        X = ones(n*m, 3);
        X(:,1) = reshape(imc(:,:,1), 1, n*m)';
        X(:,2) = reshape(imc(:,:,2), 1, n*m)';
        X(:,3) = reshape(imc(:,:,3), 1, n*m)';
        %We create 16 clusters based on RGB
        [idx, c] = kmeans(X, 16);
        %Generating the result image using the RGB value on the centroids for each cluster 
        res = zeros(n, m, 3, 'uint8');
        res(:) = floor(c(idx(:),:));
        subplot(2,2,3); imshow(res);
        subplot(2,2,4); plotPixelDistribution(res);
    end

section_cdef();

    function [] = section_g()
        %Additional analysis for pixel coordinates + RGB
        X = ones(n*m, 5);
        X(:,1) = repmat(1:n, 1, m)';
        X(:,2) = repelems(m, n);
        X(:,3) = reshape(imc(:,:,1), 1, n*m)';
        X(:,4) = reshape(imc(:,:,2), 1, n*m)';
        X(:,5) = reshape(imc(:,:,3), 1, n*m)';

        [idx, c] = kmeans(X, 16);
        res = zeros(n, m, 3, 'uint8');
        res(:) = floor(c(idx(:),3:5));

        figure;
        imshow(res); title('16 cluster for image using pixel coordinates + RGB');
    end

section_g();

end

