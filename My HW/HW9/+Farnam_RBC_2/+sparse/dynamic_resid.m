function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = Farnam_RBC_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(13, 1);
    residual(1) = (params(4)/(1-y(15))) - (T(1)*y(19));
    residual(2) = (T(1)) - (params(2)*1/y(27)*(y(33)+1-params(3)));
    residual(3) = (T(1)) - (params(2)*1/y(27)*(1+y(25)));
    residual(4) = (y(20)) - (T(3)*T(4));
    residual(5) = (y(19)) - (y(21)*(1-params(1))*T(5)*T(6));
    residual(6) = (y(16)) - (T(4)*y(21)*T(5));
    residual(7) = (y(18)) - (y(17)+(1-params(3))*y(5));
    residual(8) = (y(16)) - (y(14)+y(17));
    residual(9) = (y(22)) - ((y(14)*params(5)*(1+y(24))/y(24))^params(6));
    residual(10) = (1+y(25)) - ((1+y(24))*T(7));
    residual(11) = (log(y(21))) - (params(7)*log(y(8))+x(1));
    residual(12) = (y(26)) - ((1-params(8))*params(9)-y(23)+params(8)*y(10)+params(8)*y(13)+x(2));
    residual(13) = (log(y(22))) - (y(26)+log(y(9)));
end
