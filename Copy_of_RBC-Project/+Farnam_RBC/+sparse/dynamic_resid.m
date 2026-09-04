function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = Farnam_RBC.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(10, 1);
    residual(1) = (T(1)/T(2)) - ((1-y(19))*y(17));
    residual(2) = (1/T(2)) - (params(2)*(1+y(18)*(1-y(20)))/T(3));
    residual(3) = (y(17)) - ((1-params(1))*y(13)/y(12));
    residual(4) = (y(18)) - (params(1)*y(13)/y(15));
    residual(5) = (y(13)) - (T(4)*T(5));
    residual(6) = (y(13)) - (y(11)+y(14)+y(16));
    residual(7) = (y(15)) - (y(14)+(1-params(4))*y(5));
    residual(8) = (log(y(16))) - (params(7)*log(y(6))+x(3));
    residual(9) = (log(y(19))) - (params(8)*log(y(9))+x(1));
    residual(10) = (log(y(20))) - (params(9)*log(y(10))+x(2));
end
