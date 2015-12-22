function [  ] = ex32(  )

    function [] = plotdots(X,  color)
        plot(X(:,1),X(:,2),color);
    end;
    


close all;
X1 = gaussRandom([1 2], 0.1, 100);
X2 = gaussRandom([2 2], 0.1, 100);
X3 = gaussRandom([2 1], 0.1, 100);
X = cat(1, X1, X2, X3);
figure;
subplot(2, 3, 1:3);
hold on;
plotdots(X1,'r*');
plotdots(X2,'g*');
plotdots(X3,'b*');

[idx2, c2] = kmeans(X, 2);
[idx3, c3] = kmeans(X, 3);
[idx4, c4] = kmeans(X, 4);

subplot(2, 3, 4);
hold on;
plotcluster(X, 2, idx2, c2);

subplot(2, 3, 5);
hold on;
plotcluster(X, 3, idx3, c3);

subplot(2, 3, 6);
hold on;
plotcluster(X, 4, idx4, c4);


%Section C
W = transpose(X);
[c1,idx1,d2c1] = MeanShiftCluster(W,0.3,0);
[c2,idx2,d2c2] = MeanShiftCluster(W,0.5,0);
[c3,idx3,d2c3] = MeanShiftCluster(W,0.75,0);

figure;

subplot(2, 3, 1:3);
hold on;
plotdots(X1,'r*');
plotdots(X2,'g*');
plotdots(X3,'b*');

subplot(2, 3, 4);
hold on;
idx1t = transpose(idx1);
c1t = transpose(c1);
plotcluster(X, max(idx1t), idx1t, c1t);

subplot(2, 3, 5);
hold on;
idx2t = transpose(idx2);
c2t = transpose(c2);
plotcluster(X, max(idx2t), idx2t, c2t);

subplot(2, 3, 6);
hold on;
idx3t = transpose(idx3);
c3t = transpose(c3);
plotcluster(X, max(idx3t), idx3t, c3t);
end
