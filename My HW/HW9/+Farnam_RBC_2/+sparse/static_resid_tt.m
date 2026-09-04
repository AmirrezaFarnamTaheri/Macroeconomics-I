function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = 1/y(1);
T(2) = y(5)^(params(1)-1);
T(3) = params(1)*y(8)*T(2);
T(4) = y(2)^(1-params(1));
T(5) = y(5)^params(1);
T(6) = y(2)^(-params(1));
T(7) = (1+y(10))^(-1);
end
