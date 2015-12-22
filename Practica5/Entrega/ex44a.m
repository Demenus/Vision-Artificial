function [ ] = ex44a()
close all;
outSize = [20, 20];
[X,Y] = getDataBase(outSize,16);

model=uint8(round(reshape(mean(X(Y==1,:),1),outSize)));
imshow(model);

%(rectPos(2):rectPos(2)+rectPos(4)-1,rectPos(1):rectPos(1)+rectPos(3)-1);
rectNeg = [3 7 14 4];
rectPos = [3 9 14 2];

rectangle('position',rectNeg,'facecolor','k');
rectangle('position',rectPos,'facecolor','w');

end