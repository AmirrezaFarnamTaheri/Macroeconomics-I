function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Farnam_RBC_SSmodel.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(10) = getPowerDeriv(y(3),params(3),1);
T(11) = (-(getPowerDeriv(1-y(12),(-params(6)),1)));
T(12) = getPowerDeriv(y(14)*T(2),1-params(5),1);
T(13) = getPowerDeriv(y(12),1-params(3),1);
T(14) = getPowerDeriv(y(22)*T(3),1-params(5),1);
end
