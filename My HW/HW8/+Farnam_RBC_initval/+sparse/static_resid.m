function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = Farnam_RBC_initval.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(8, 1);
    residual(1) = (T(3)) - (T(3)*params(1)*(y(8)+1-params(2)));
    residual(2) = (y(7)) - (T(1)*y(6)*params(7));
    residual(3) = (y(7)) - ((1-params(3))*y(5)*T(4)*T(5));
    residual(4) = (y(8)) - (T(7)*T(8));
    residual(5) = (y(1)) - (T(8)*y(5)*T(4));
    residual(6) = (y(1)) - (y(6)+y(2));
    residual(7) = (y(3)) - (y(2)+(1-params(2))*y(3));
    residual(8) = (log(y(5))) - (log(y(5))*params(4)+x(1));
end
