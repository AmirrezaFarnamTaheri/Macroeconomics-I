function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Solow.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(3, 1);
    residual(1) = (y(4)) - (params(1)*T(3)-(params(7)+params(6)+params(5)-1)*y(1));
    residual(2) = (y(5)) - (params(2)*T(3)-(params(7)+params(6)+params(5)-1)*y(1));
    residual(3) = (y(6)) - (T(3));
end
