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
    T = Farnam_RBC_SSmodel.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(8, 14);
g1(1,6)=y(8)*T(2)*params(7)*T(11)/(1-params(6))*T(12);
g1(1,11)=(-((y(13)+1-params(2))*params(1)*y(12)*T(3)*params(7)*(-(getPowerDeriv(1-y(11),(-params(6)),1)))/(1-params(6))*T(14)));
g1(1,8)=T(2)*T(12);
g1(1,12)=(-((y(13)+1-params(2))*params(1)*T(3)*T(14)));
g1(1,13)=(-T(4));
g1(2,6)=(-(y(8)*params(7)*T(11)));
g1(2,8)=(-(params(7)*T(1)));
g1(2,9)=1;
g1(3,1)=(-(T(6)*(1-params(3))*y(7)*T(10)));
g1(3,6)=(-((1-params(3))*y(7)*T(5)*getPowerDeriv(y(6),(-params(3)),1)));
g1(3,7)=(-(T(6)*(1-params(3))*T(5)));
g1(3,9)=1;
g1(4,1)=(-(T(9)*params(3)*y(7)*getPowerDeriv(y(1),params(3)-1,1)));
g1(4,6)=(-(T(8)*T(13)));
g1(4,7)=(-(T(9)*params(3)*T(7)));
g1(4,10)=1;
g1(5,3)=1;
g1(5,1)=(-(T(9)*y(7)*T(10)));
g1(5,6)=(-(y(7)*T(5)*T(13)));
g1(5,7)=(-(T(5)*T(9)));
g1(6,3)=1;
g1(6,4)=(-1);
g1(6,8)=(-1);
g1(7,4)=(-1);
g1(7,1)=(-(1-params(2)));
g1(7,5)=1;
g1(8,2)=(-(params(4)*1/y(2)));
g1(8,7)=1/y(7);
g1(8,14)=(-1);

end
