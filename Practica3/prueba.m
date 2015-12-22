function [  ] = prueba(  )

    function [] = plotdots(X,  color)
        plot(X(:,1),X(:,2),color);
    end;

close all;
X1 = gaussRandom([0 0], 0.1, 100);
X2 = gaussRandom([-5 -5], 0.1, 100);
X3 = gaussRandom([5 5], 0.1, 100);
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

Y21 = X(idx2==1, :);
Y22 = X(idx2==2, :);
subplot(2, 3, 4);
hold on;
plotdots(Y21,'r.');
plotdots(Y22,'g.');
%plot(c2(1),c2(2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c2(3),c2(4),'Xk','linewidth',8,'MarkerSize', 8);

Y31 = X(idx3==1, :);
Y32 = X(idx3==2, :);
Y33 = X(idx3==3, :);
subplot(2, 3, 5);
hold on;
plotdots(Y31,'r.');
plotdots(Y32,'g.');
plotdots(Y33,'b.');
%plot(c3(1),c3(2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c3(3),c3(4),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c3(5),c3(6),'Xk','linewidth',8,'MarkerSize', 8);

Y41 = X(idx4==1, :);
Y42 = X(idx4==2, :);
Y43 = X(idx4==3, :);
Y44 = X(idx4==4, :);
subplot(2, 3, 6);
hold on;
plotdots(Y41,'r.');
plotdots(Y42,'g.');
plotdots(Y43,'b.');
plotdots(Y44,'y.');
end





%Y21 = X(idx2==1, :);
%Y22 = X(idx2==2, :);
%subplot(2, 3, 4);
%hold on;
%plotdots(Y21,'r.');
%plotdots(Y22,'g.');
%plot(c2(1,1),c2(1,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c2(2,1),c2(2,2),'Xk','linewidth',8,'MarkerSize', 8);


%Y31 = X(idx3==1, :);
%Y32 = X(idx3==2, :);
%Y33 = X(idx3==3, :);
%subplot(2, 3, 5);
%hold on;
%plotdots(Y31,'r.');
%plotdots(Y32,'g.');
%plotdots(Y33,'b.');
%plot(c3(1,1),c3(1,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c3(2,1),c3(2,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c3(3,1),c3(3,2),'Xk','linewidth',8,'MarkerSize', 8);

%Y41 = X(idx4==1, :);
%Y42 = X(idx4==2, :);
%Y43 = X(idx4==3, :);
%Y44 = X(idx4==4, :);
%subplot(2, 3, 6);
%hold on;
%plotdots(Y41,'r.');
%plotdots(Y42,'g.');
%plotdots(Y43,'b.');
%plotdots(Y44,'y.');
%plot(c4(1,1),c4(1,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c4(2,1),c4(2,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c4(3,1),c4(3,2),'Xk','linewidth',8,'MarkerSize', 8);
%plot(c4(4,1),c4(4,2),'Xk','linewidth',8,'MarkerSize', 8);