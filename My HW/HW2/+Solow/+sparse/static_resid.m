function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Solow.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(3, 1);
    residual(1) = (y(1)) - (params(1)*T(3)-y(1)*(params(7)+params(6)+params(5)-1));
    residual(2) = (y(2)) - (T(3)*params(2)-y(1)*(params(7)+params(6)+params(5)-1));
    residual(3) = (y(3)) - (T(3));
end
