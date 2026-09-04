function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Solow.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 5
    T = [T; NaN(5 - size(T, 1), 1)];
end
T(4) = T(2)*getPowerDeriv(y(1),params(3),1);
T(5) = T(1)*getPowerDeriv(y(2),params(4),1);
end
