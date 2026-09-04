function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = (1-y(12))^(-params(6));
T(2) = exp((params(7)*T(1)-1)/(1-params(6)));
T(3) = exp((params(7)*(1-y(20))^(-params(6))-1)/(1-params(6)));
T(4) = params(1)*(y(22)*T(3))^(1-params(5));
T(5) = y(3)^params(3);
T(6) = y(12)^(-params(3));
T(7) = y(3)^(params(3)-1);
T(8) = params(3)*y(13)*T(7);
T(9) = y(12)^(1-params(3));
end
