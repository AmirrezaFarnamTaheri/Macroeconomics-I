function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = solow.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(10, 1);
    residual(1) = (y(20)) - (T(1));
    residual(2) = ((y(12)/y(2))^params(3)) - (T(2)*(1+y(18)-params(2)));
    residual(3) = (y(19)) - (y(18)-params(2));
    residual(4) = (y(16)) - (params(7)*y(12)*T(3));
    residual(5) = (y(16)) - (exp(y(17))*(1-params(3))*T(4)*T(5));
    residual(6) = (y(18)) - (T(6)*T(7));
    residual(7) = (y(12)+y(14)) - (y(11));
    residual(8) = (y(11)) - (T(7)*exp(y(17))*T(4));
    residual(9) = (y(13)) - (y(4)+(1-params(2))*y(3));
    residual(10) = (y(17)) - (params(4)*y(7)+x(1));
end
