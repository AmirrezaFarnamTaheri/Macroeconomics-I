function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 4
    T = [T; NaN(4 - size(T, 1), 1)];
end
T(1) = params(3)*y(2)^params(6);
T(2) = y(1)^params(5);
T(3) = params(10)*y(5)^params(1);
T(4) = y(2)^(1-params(1));
end
