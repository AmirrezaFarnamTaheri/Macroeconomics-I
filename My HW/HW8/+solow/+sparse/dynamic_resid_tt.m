function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = exp(params(7)*((1-y(15))^(1-params(6))-1)/(1-params(6)));
T(2) = (y(20)/y(10))^(1-params(5))*params(1);
T(3) = (1-y(15))^(-params(6));
T(4) = y(13)^params(3);
T(5) = y(15)^(-params(3));
T(6) = params(3)*exp(y(17))*y(13)^(params(3)-1);
T(7) = y(15)^(1-params(3));
end
