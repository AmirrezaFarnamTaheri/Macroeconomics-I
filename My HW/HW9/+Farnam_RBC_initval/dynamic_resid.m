function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Farnam_RBC_initval.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
    residual(1) = (y(17)) - (1/y(11));
    residual(2) = (params(8)*y(9)^params(9)) - (y(17)*y(12)*(1-y(15)));
    residual(3) = (y(17)) - (params(1)*y(20)*(1+y(18)*(1-y(19))-params(2)));
    residual(4) = (y(12)) - ((1-params(3))*y(6)/y(9));
    residual(5) = (y(13)) - (params(3)*y(6)/y(8));
    residual(6) = (y(6)) - (T(2)*T(3));
    residual(7) = (y(6)) - (y(11)+y(7)+y(14));
    residual(8) = (y(8)) - (y(7)+(1-params(2))*y(1));
    residual(9) = (log(y(10))) - (params(4)*log(y(2))+x(it_, 1));
    residual(10) = (log(y(14))) - (params(5)*log(y(3))+x(it_, 2));
    residual(11) = (y(15)) - ((1-params(6))*params(10)+params(6)*y(4)+x(it_, 3));
    residual(12) = (y(16)) - ((1-params(7))*params(11)+params(7)*y(5)+x(it_, 4));

end
