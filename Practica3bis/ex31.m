function [  ] = ex31(  )
close all;
v = VideoReader('Barcelona.mp4');
h = v.Height;
w = v.Width;
N = 200;
M = read(v, [1, N]);

figure;

for i=1:20:200

    back = M(:,:,:,i);
    imshow(uint8(back));
    pause(0.1);
end

%back = median(double(M), 4);
%b = uint8(back);
%figure; imshow(b);
end

