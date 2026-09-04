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
    T = solow.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
    residual(1) = (y(10)) - (T(1));
    residual(2) = (1) - (params(1)*(1+y(8)-params(2)));
    residual(3) = (y(9)) - (y(8)-params(2));
    residual(4) = (y(6)) - (params(7)*y(2)*T(2));
    residual(5) = (y(6)) - (exp(y(7))*(1-params(3))*T(3)*T(4));
    residual(6) = (y(8)) - (T(5)*T(6));
    residual(7) = (y(2)+y(4)) - (y(1));
    residual(8) = (y(1)) - (T(6)*exp(y(7))*T(3));
    residual(9) = (y(3)) - (y(4)+y(3)*(1-params(2)));
    residual(10) = (y(7)) - (y(7)*params(4)+x(1));

end
