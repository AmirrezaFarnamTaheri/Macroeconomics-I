function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 5
    T = [T; NaN(5 - size(T, 1), 1)];
end
T(1) = params(3)*y(12)^params(6);
T(2) = y(11)^params(5);
T(3) = y(21)^params(5);
T(4) = params(10)*y(15)^params(1);
T(5) = y(12)^(1-params(1));
end
