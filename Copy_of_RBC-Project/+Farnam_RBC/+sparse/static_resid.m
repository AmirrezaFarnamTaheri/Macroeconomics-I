function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = Farnam_RBC.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(10, 1);
    residual(1) = (T(1)/T(2)) - ((1-y(9))*y(7));
    residual(2) = (1/T(2)) - (params(2)*(1+y(8)*(1-y(10)))/T(2));
    residual(3) = (y(7)) - ((1-params(1))*y(3)/y(2));
    residual(4) = (y(8)) - (params(1)*y(3)/y(5));
    residual(5) = (y(3)) - (T(3)*T(4));
    residual(6) = (y(3)) - (y(1)+y(4)+y(6));
    residual(7) = (y(5)) - (y(4)+y(5)*(1-params(4)));
    residual(8) = (log(y(6))) - (log(y(6))*params(7)+x(3));
    residual(9) = (log(y(9))) - (log(y(9))*params(8)+x(1));
    residual(10) = (log(y(10))) - (log(y(10))*params(9)+x(2));
end
