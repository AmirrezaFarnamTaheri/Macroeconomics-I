function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 6
    T = [T; NaN(6 - size(T, 1), 1)];
end
T(1) = exp(params(7)*((1-y(5))^(1-params(6))-1)/(1-params(6)));
T(2) = (1-y(5))^(-params(6));
T(3) = y(3)^params(3);
T(4) = y(5)^(-params(3));
T(5) = params(3)*exp(y(7))*y(3)^(params(3)-1);
T(6) = y(5)^(1-params(3));
end
