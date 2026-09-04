function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = RBC.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(8, 1);
    residual(1) = (1/y(14)) - (params(1)*1/y(22)*(y(24)+1-params(2)));
    residual(2) = (y(15)) - (y(14)*params(5));
    residual(3) = (y(15)) - ((1-params(3))*exp(y(13))*T(1)*T(2));
    residual(4) = (y(16)) - (T(3)*T(4));
    residual(5) = (y(9)) - (T(4)*exp(y(13))*T(1));
    residual(6) = (y(9)) - (y(14)+y(10));
    residual(7) = (y(19)) - (y(10)+(1-params(2))*y(11));
    residual(8) = (y(13)) - (params(4)*y(5)+x(1));
end
