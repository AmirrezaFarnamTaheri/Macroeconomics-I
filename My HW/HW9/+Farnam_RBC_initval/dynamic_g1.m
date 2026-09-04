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
    T = Farnam_RBC_initval.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(12, 24);
g1(1,11)=(-((-1)/(y(11)*y(11))));
g1(1,17)=1;
g1(2,9)=params(8)*getPowerDeriv(y(9),params(9),1);
g1(2,12)=(-(y(17)*(1-y(15))));
g1(2,15)=y(17)*y(12);
g1(2,17)=(-(y(12)*(1-y(15))));
g1(3,18)=(-(params(1)*y(20)*(1-y(19))));
g1(3,19)=(-(params(1)*y(20)*(-y(18))));
g1(3,17)=1;
g1(3,20)=(-(params(1)*(1+y(18)*(1-y(19))-params(2))));
g1(4,6)=(-((1-params(3))/y(9)));
g1(4,9)=(-((-((1-params(3))*y(6)))/(y(9)*y(9))));
g1(4,12)=1;
g1(5,6)=(-(params(3)/y(8)));
g1(5,8)=(-((-(params(3)*y(6)))/(y(8)*y(8))));
g1(5,13)=1;
g1(6,6)=1;
g1(6,8)=(-(T(3)*y(10)*getPowerDeriv(y(8),params(3),1)));
g1(6,9)=(-(T(2)*getPowerDeriv(y(9),1-params(3),1)));
g1(6,10)=(-(T(1)*T(3)));
g1(7,6)=1;
g1(7,7)=(-1);
g1(7,11)=(-1);
g1(7,14)=(-1);
g1(8,7)=(-1);
g1(8,1)=(-(1-params(2)));
g1(8,8)=1;
g1(9,2)=(-(params(4)*1/y(2)));
g1(9,10)=1/y(10);
g1(9,21)=(-1);
g1(10,3)=(-(params(5)*1/y(3)));
g1(10,14)=1/y(14);
g1(10,22)=(-1);
g1(11,4)=(-params(6));
g1(11,15)=1;
g1(11,23)=(-1);
g1(12,5)=(-params(7));
g1(12,16)=1;
g1(12,24)=(-1);

end
