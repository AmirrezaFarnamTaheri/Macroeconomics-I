function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = Farnam_RBC_2.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(13, 1);
    residual(1) = (params(4)/(1-y(2))) - (T(1)*y(6));
    residual(2) = (T(1)) - (T(1)*params(2)*(y(7)+1-params(3)));
    residual(3) = (T(1)) - (T(1)*params(2)*(1+y(12)));
    residual(4) = (y(7)) - (T(3)*T(4));
    residual(5) = (y(6)) - (y(8)*(1-params(1))*T(5)*T(6));
    residual(6) = (y(3)) - (T(4)*y(8)*T(5));
    residual(7) = (y(5)) - (y(4)+(1-params(3))*y(5));
    residual(8) = (y(3)) - (y(1)+y(4));
    residual(9) = (y(9)) - ((y(1)*params(5)*(1+y(11))/y(11))^params(6));
    residual(10) = (1+y(12)) - ((1+y(11))*T(7));
    residual(11) = (log(y(8))) - (log(y(8))*params(7)+x(1));
    residual(12) = (y(13)) - ((1-params(8))*params(9)-y(10)+y(10)*params(8)+y(13)*params(8)+x(2));
    residual(13) = (log(y(9))) - (y(13)+log(y(9)));
end
