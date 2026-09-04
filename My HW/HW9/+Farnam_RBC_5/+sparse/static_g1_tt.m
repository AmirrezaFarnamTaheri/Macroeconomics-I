function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Farnam_RBC_5.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(8) = (-1)/(y(1)*y(1));
T(9) = getPowerDeriv(y(1)*params(5)*(1+y(11))/y(11),params(6),1);
T(10) = getPowerDeriv(y(2),1-params(1),1);
T(11) = getPowerDeriv(y(5),params(1),1);
end
