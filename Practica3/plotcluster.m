function [] = plotcluster(X, k, idx, c)
    cc = hsv(k);
    for i=1:k
        Y = X(idx==i, :);
        plot(Y(:,1),Y(:,2),'.','Color',cc(i,:));
        plot(c(i,1),c(i,2),'Xk','linewidth',8,'MarkerSize', 8);
    end
end