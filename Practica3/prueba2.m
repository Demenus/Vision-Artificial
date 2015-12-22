function [ backs ] = prueba2(  )
close all;
v = VideoReader('Barcelona.mp4');
h = v.Height;
w = v.Width;
%M = read(v);
%[n m d N] = size(backs);

    function [v] = calcvec(im)
        [c1, x1] = imhist(im(:,:,1));
        [c2, x1] = imhist(im(:,:,2));
        [c3, x1] = imhist(im(:,:,3));
        v = cat(1,c1, c2, c3);
    end
        
prev = readFrame(v);
takes = [];
M = [];
M = cat(4, M, prev);
%We always need the first one
%takes = cat(1, takes, 1);
backs = [];
while hasFrame(v)
    cur = readFrame(v);
    %We calculate the distance between the previous frame and the current
    %one
    r = imabsdiff(prev, cur);
    r2 = im2bw(rgb2gray(r),0.1);
    v = imhist(r2);
    %If we have a big change it means we have a new shot
    if v(2) > 3000
        %takes = cat(1,takes,i);
        %p = takes(end-1);
        %c = takes(end);
        b = median(double(M(:,:,:,1:end)), 4);
        backs = cat(4, backs, b);
        M = [];
    else
        M = cat(4, M, cur);
    end
    prev = cur;
end

figure;
hold;
[n m d l] = size(backs);
for i=1:l    
    imshow(uint8(backs(:,:,:,i)));
    pause(0.4);
end
end

