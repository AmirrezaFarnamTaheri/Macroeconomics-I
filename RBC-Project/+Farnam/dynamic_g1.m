function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = Farnam.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(8, 14);
g1(1,9)=(-1)/(y(9)*y(9));
g1(1,12)=(-((y(13)+1-params(2))*params(1)*(-1)/(y(12)*y(12))));
g1(1,13)=(-(params(1)*1/y(12)));
g1(2,9)=(-params(5));
g1(2,10)=1;
g1(3,6)=(-(T(2)*(1-params(3))*exp(y(8))*T(5)));
g1(3,7)=(-((1-params(3))*exp(y(8))*T(1)*getPowerDeriv(y(7),(-params(3)),1)));
g1(3,8)=(-((1-params(3))*exp(y(8))*T(1)*T(2)));
g1(3,10)=1;
g1(4,6)=(-(T(4)*params(3)*exp(y(8))*getPowerDeriv(y(6),params(3)-1,1)));
g1(4,7)=(-(T(3)*T(6)));
g1(4,8)=(-(T(3)*T(4)));
g1(4,11)=1;
g1(5,4)=1;
g1(5,6)=(-(T(4)*exp(y(8))*T(5)));
g1(5,7)=(-(exp(y(8))*T(1)*T(6)));
g1(5,8)=(-(T(4)*exp(y(8))*T(1)));
g1(6,4)=1;
g1(6,5)=(-1);
g1(6,9)=(-1);
g1(7,1)=(-1);
g1(7,2)=(-(1-params(2)));
g1(7,6)=1;
g1(8,3)=(-params(4));
g1(8,8)=1;
g1(8,14)=(-1);

end
