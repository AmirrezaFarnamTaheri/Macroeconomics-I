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
    T = Copy_of_Farnam_RBC_5.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
    residual(1) = (y(10)) - (1/y(1));
    residual(2) = (params(5)*y(2)^params(3)) - (y(10)*y(8));
    residual(3) = (y(10)) - (y(10)*params(2)*(1+y(7)-params(4)));
    residual(4) = (y(8)) - ((1-params(1))*y(3)/y(2));
    residual(5) = (y(7)) - (params(1)*y(3)/y(5));
    residual(6) = (y(3)) - (T(2)*T(3));
    residual(7) = (y(3)) - (y(1)+y(4)+y(6));
    residual(8) = (y(5)) - (y(4)+y(5)*(1-params(4)));
    residual(9) = (log(y(9))) - (log(y(9))*params(7)+x(2));
    residual(10) = (log(y(6))) - (log(y(6))*params(8)+x(1));

end
