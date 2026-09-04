function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Copy_of_Farnam_RBC_5.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(10, 1);
    residual(1) = (y(20)) - (1/y(11));
    residual(2) = (params(5)*y(12)^params(3)) - (y(20)*y(18));
    residual(3) = (y(20)) - (params(2)*y(30)*(1+y(27)-params(4)));
    residual(4) = (y(18)) - ((1-params(1))*y(13)/y(12));
    residual(5) = (y(17)) - (params(1)*y(13)/y(5));
    residual(6) = (y(13)) - (T(2)*T(3));
    residual(7) = (y(13)) - (y(11)+y(14)+y(16));
    residual(8) = (y(15)) - (y(14)+y(5)*(1-params(4)));
    residual(9) = (log(y(19))) - (params(7)*log(y(9))+x(2));
    residual(10) = (log(y(16))) - (params(8)*log(y(6))+x(1));
end
