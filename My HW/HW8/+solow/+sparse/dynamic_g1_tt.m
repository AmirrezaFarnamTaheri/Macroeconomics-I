function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = solow.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(8) = getPowerDeriv(y(12)/y(2),params(3),1);
T(9) = getPowerDeriv(y(13),params(3),1);
T(10) = getPowerDeriv(y(15),1-params(3),1);
T(11) = getPowerDeriv(y(20)/y(10),1-params(5),1);
end
