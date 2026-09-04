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
    T = Farnam_RBC_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(13, 1);
    residual(1) = (params(4)/(1-y(7))) - (T(1)*y(11));
    residual(2) = (T(1)) - (params(2)*1/y(19)*(y(20)+1-params(3)));
    residual(3) = (T(1)) - (params(2)*1/y(19)*(1+y(17)));
    residual(4) = (y(12)) - (T(3)*T(4));
    residual(5) = (y(11)) - (y(13)*(1-params(1))*T(5)*T(6));
    residual(6) = (y(8)) - (T(4)*y(13)*T(5));
    residual(7) = (y(10)) - (y(9)+(1-params(3))*y(1));
    residual(8) = (y(8)) - (y(6)+y(9));
    residual(9) = (y(14)) - ((y(6)*params(5)*(1+y(16))/y(16))^params(6));
    residual(10) = (1+y(17)) - ((1+y(16))*T(7));
    residual(11) = (log(y(13))) - (params(7)*log(y(2))+x(it_, 1));
    residual(12) = (y(18)) - ((1-params(8))*params(9)-y(15)+params(8)*y(4)+params(8)*y(5)+x(it_, 2));
    residual(13) = (log(y(14))) - (y(18)+log(y(3)));

end
