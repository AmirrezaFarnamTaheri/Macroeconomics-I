function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(1) = (1-y(4))^(-params(6));
T(2) = exp((params(7)*T(1)-1)/(1-params(6)));
T(3) = (y(6)*T(2))^(1-params(5));
T(4) = y(3)^params(3);
T(5) = y(4)^(-params(3));
T(6) = y(3)^(params(3)-1);
T(7) = params(3)*y(5)*T(6);
T(8) = y(4)^(1-params(3));
end
