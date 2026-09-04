function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = solow.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(10, 1);
    residual(1) = (y(10)) - (T(1));
    residual(2) = (1) - (params(1)*(1+y(8)-params(2)));
    residual(3) = (y(9)) - (y(8)-params(2));
    residual(4) = (y(6)) - (params(7)*y(2)*T(2));
    residual(5) = (y(6)) - (exp(y(7))*(1-params(3))*T(3)*T(4));
    residual(6) = (y(8)) - (T(5)*T(6));
    residual(7) = (y(2)+y(4)) - (y(1));
    residual(8) = (y(1)) - (T(6)*exp(y(7))*T(3));
    residual(9) = (y(3)) - (y(4)+y(3)*(1-params(2)));
    residual(10) = (y(7)) - (y(7)*params(4)+x(1));
end
