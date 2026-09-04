function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Farnam_RBC_initval.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 13
    T = [T; NaN(13 - size(T, 1), 1)];
end
T(9) = getPowerDeriv(y(3),params(3),1);
T(10) = (-(getPowerDeriv(1-y(4),(-params(6)),1)));
T(11) = getPowerDeriv(y(6)*T(2),1-params(5),1);
T(12) = y(6)*T(2)*params(7)*T(10)/(1-params(6))*T(11);
T(13) = getPowerDeriv(y(4),1-params(3),1);
end
