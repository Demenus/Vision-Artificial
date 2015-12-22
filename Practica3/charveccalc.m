    function [i j v] = charveccalc(ind, x)
        [i, j] = ind2sub([n m], ind);
        v = x;
    end