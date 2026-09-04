function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Copy_of_Farnam_RBC_5.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(10, 1);
    residual(1) = (y(10)) - (1/y(1));
    residual(2) = (params(5)*y(2)^params(3)) - (y(10)*y(8));
    residual(3) = (y(10)) - (y(10)*params(2)*(1+y(7)-params(4)));
    residual(4) = (y(8)) - ((1-params(1))*y(3)/y(2));
    residual(5) = (y(7)) - (params(1)*y(3)/y(5));
    residual(6) = (y(3)) - (T(2)*T(3));
    residual(7) = (y(3)) - (y(1)+y(4)+y(6));
    residual(8) = (y(5)) - (y(4)+y(5)*(1-params(4)));
    residual(9) = (log(y(9))) - (log(y(9))*params(7)+x(2));
    residual(10) = (log(y(6))) - (log(y(6))*params(8)+x(1));
end
