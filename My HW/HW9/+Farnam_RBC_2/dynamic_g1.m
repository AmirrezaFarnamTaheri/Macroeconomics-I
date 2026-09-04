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
    T = Farnam_RBC_2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 23);
g1(1,6)=(-(y(11)*(-1)/(y(6)*y(6))));
g1(1,7)=params(4)/((1-y(7))*(1-y(7)));
g1(1,11)=(-T(1));
g1(2,6)=(-1)/(y(6)*y(6));
g1(2,19)=(-((y(20)+1-params(3))*params(2)*(-1)/(y(19)*y(19))));
g1(2,20)=(-(params(2)*1/y(19)));
g1(3,6)=(-1)/(y(6)*y(6));
g1(3,19)=(-((1+y(17))*params(2)*(-1)/(y(19)*y(19))));
g1(3,17)=(-(params(2)*1/y(19)));
g1(4,7)=(-(T(3)*T(9)));
g1(4,1)=(-(T(4)*params(1)*y(13)*getPowerDeriv(y(1),params(1)-1,1)));
g1(4,12)=1;
g1(4,13)=(-(T(4)*params(1)*T(2)));
g1(5,7)=(-(y(13)*(1-params(1))*T(5)*getPowerDeriv(y(7),(-params(1)),1)));
g1(5,1)=(-(T(6)*y(13)*(1-params(1))*T(10)));
g1(5,11)=1;
g1(5,13)=(-(T(6)*(1-params(1))*T(5)));
g1(6,7)=(-(y(13)*T(5)*T(9)));
g1(6,8)=1;
g1(6,1)=(-(T(4)*y(13)*T(10)));
g1(6,13)=(-(T(4)*T(5)));
g1(7,9)=(-1);
g1(7,1)=(-(1-params(3)));
g1(7,10)=1;
g1(8,6)=(-1);
g1(8,8)=1;
g1(8,9)=(-1);
g1(9,6)=(-(params(5)*(1+y(16))/y(16)*T(8)));
g1(9,14)=1;
g1(9,16)=(-(T(8)*(y(6)*params(5)*y(16)-y(6)*params(5)*(1+y(16)))/(y(16)*y(16))));
g1(10,21)=(-((1+y(16))*getPowerDeriv(1+y(21),(-1),1)));
g1(10,16)=(-T(7));
g1(10,17)=1;
g1(11,2)=(-(params(7)*1/y(2)));
g1(11,13)=1/y(13);
g1(11,22)=(-1);
g1(12,4)=(-params(8));
g1(12,15)=1;
g1(12,5)=(-params(8));
g1(12,18)=1;
g1(12,23)=(-1);
g1(13,3)=(-(1/y(3)));
g1(13,14)=1/y(14);
g1(13,18)=(-1);

end
