function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Farnam_RBC_initval.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(12, 1);
    residual(1) = (y(12)) - (1/y(6));
    residual(2) = (params(8)*y(4)^params(9)) - (y(12)*y(7)*(1-y(10)));
    residual(3) = (y(12)) - (y(12)*params(1)*(1+y(8)*(1-y(11))-params(2)));
    residual(4) = (y(7)) - ((1-params(3))*y(1)/y(4));
    residual(5) = (y(8)) - (params(3)*y(1)/y(3));
    residual(6) = (y(1)) - (T(2)*T(3));
    residual(7) = (y(1)) - (y(6)+y(2)+y(9));
    residual(8) = (y(3)) - (y(2)+y(3)*(1-params(2)));
    residual(9) = (log(y(5))) - (log(y(5))*params(4)+x(1));
    residual(10) = (log(y(9))) - (log(y(9))*params(5)+x(2));
    residual(11) = (y(10)) - ((1-params(6))*params(10)+y(10)*params(6)+x(3));
    residual(12) = (y(11)) - ((1-params(7))*params(11)+y(11)*params(7)+x(4));
end
