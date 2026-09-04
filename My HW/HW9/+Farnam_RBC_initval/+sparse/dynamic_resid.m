function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Farnam_RBC_initval.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(12, 1);
    residual(1) = (y(24)) - (1/y(18));
    residual(2) = (params(8)*y(16)^params(9)) - (y(24)*y(19)*(1-y(22)));
    residual(3) = (y(24)) - (params(1)*y(36)*(1+y(32)*(1-y(35))-params(2)));
    residual(4) = (y(19)) - ((1-params(3))*y(13)/y(16));
    residual(5) = (y(20)) - (params(3)*y(13)/y(15));
    residual(6) = (y(13)) - (T(2)*T(3));
    residual(7) = (y(13)) - (y(18)+y(14)+y(21));
    residual(8) = (y(15)) - (y(14)+(1-params(2))*y(3));
    residual(9) = (log(y(17))) - (params(4)*log(y(5))+x(1));
    residual(10) = (log(y(21))) - (params(5)*log(y(9))+x(2));
    residual(11) = (y(22)) - ((1-params(6))*params(10)+params(6)*y(10)+x(3));
    residual(12) = (y(23)) - ((1-params(7))*params(11)+params(7)*y(11)+x(4));
end
