function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(3, 1);
lhs = NaN(3, 1);
rhs = NaN(3, 1);
T(1) = y(1)^params(3);
T(2) = y(2)^params(4);
T(3) = T(1)*T(2);
lhs(1) = y(4);
rhs(1) = params(1)*T(3)-(params(7)+params(6)+params(5)-1)*y(1);
lhs(2) = y(5);
rhs(2) = params(2)*T(3)-(params(7)+params(6)+params(5)-1)*y(1);
lhs(3) = y(6);
rhs(3) = T(3);
end
