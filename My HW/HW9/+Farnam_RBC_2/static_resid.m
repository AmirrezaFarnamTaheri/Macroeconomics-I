function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Farnam_RBC_2.static_resid_tt(T, y, x, params);
end
residual = zeros(13, 1);
    residual(1) = (params(4)/(1-y(2))) - (T(1)*y(6));
    residual(2) = (T(1)) - (T(1)*params(2)*(y(7)+1-params(3)));
    residual(3) = (T(1)) - (T(1)*params(2)*(1+y(12)));
    residual(4) = (y(7)) - (T(3)*T(4));
    residual(5) = (y(6)) - (y(8)*(1-params(1))*T(5)*T(6));
    residual(6) = (y(3)) - (T(4)*y(8)*T(5));
    residual(7) = (y(5)) - (y(4)+(1-params(3))*y(5));
    residual(8) = (y(3)) - (y(1)+y(4));
    residual(9) = (y(9)) - ((y(1)*params(5)*(1+y(11))/y(11))^params(6));
    residual(10) = (1+y(12)) - ((1+y(11))*T(7));
    residual(11) = (log(y(8))) - (log(y(8))*params(7)+x(1));
    residual(12) = (y(13)) - ((1-params(8))*params(9)-y(10)+y(10)*params(8)+y(13)*params(8)+x(2));
    residual(13) = (log(y(9))) - (y(13)+log(y(9)));

end
