function [backs, takes] = ex31(  )
close all;
v = VideoReader('Barcelona.mp4');
h = v.Height;
w = v.Width;
O = 1;
F = 400;
M = read(v,[O,F]);
N = size(M,4);

prev = M(:,:,:,1);
takes = [];
%We always need the first one
takes = cat(1, takes, 1);
backs = [];
for i=1:N
    cur = M(:,:,:,i);
    %We calculate the distance between the previous frame and the current
    %one
    r = imabsdiff(prev, cur);
    r2 = im2bw(rgb2gray(r),0.1);
    v = imhist(r2);
    %If we have a big change it means we have a new shot
    if v(2) > 3000
        takes = cat(1,takes,i);
        p = takes(end-1);
        c = takes(end);
        b = median(double(M(:,:,:,p:c)), 4);
        backs = cat(4, backs, b);
    end
    prev = cur;
end

figure;
hold;
l = size(backs,4);
for i=1:l
    subplot(2, l, i); title('Start');
    imshow(uint8(M(:,:,:,takes(i))));
end
for i=1:l
    subplot(2, l, i+l); title('Background');
    imshow(uint8(backs(:,:,:,i)));
end

end

