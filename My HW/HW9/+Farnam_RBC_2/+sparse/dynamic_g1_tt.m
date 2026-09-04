function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Farnam_RBC_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 10
    T = [T; NaN(10 - size(T, 1), 1)];
end
T(8) = getPowerDeriv(y(14)*params(5)*(1+y(24))/y(24),params(6),1);
T(9) = getPowerDeriv(y(15),1-params(1),1);
T(10) = getPowerDeriv(y(5),params(1),1);
end
