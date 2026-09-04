function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(9, 1);
end
[T_order, T] = Farnam_RBC.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(8, 1);
    residual(1) = ((y(14)*T(2))^(1-params(5))) - (T(4)*(y(24)+1-params(2)));
    residual(2) = (y(15)) - (T(1)*y(14)*params(7));
    residual(3) = (y(15)) - ((1-params(3))*y(13)*T(5)*T(6));
    residual(4) = (y(16)) - (T(8)*T(9));
    residual(5) = (y(9)) - (T(9)*y(13)*T(5));
    residual(6) = (y(9)) - (y(14)+y(10));
    residual(7) = (y(11)) - (y(10)+(1-params(2))*y(3));
    residual(8) = (log(y(13))) - (params(4)*log(y(5))+x(1));
end
