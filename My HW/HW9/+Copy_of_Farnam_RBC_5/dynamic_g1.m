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
    T = Copy_of_Farnam_RBC_5.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(10, 17);
g1(1,4)=(-((-1)/(y(4)*y(4))));
g1(1,13)=1;
g1(2,5)=params(5)*getPowerDeriv(y(5),params(3),1);
g1(2,11)=(-y(13));
g1(2,13)=(-y(11));
g1(3,14)=(-(params(2)*y(15)));
g1(3,13)=1;
g1(3,15)=(-(params(2)*(1+y(14)-params(4))));
g1(4,5)=(-((-((1-params(1))*y(6)))/(y(5)*y(5))));
g1(4,6)=(-((1-params(1))/y(5)));
g1(4,11)=1;
g1(5,6)=(-(params(1)/y(1)));
g1(5,1)=(-((-(params(1)*y(6)))/(y(1)*y(1))));
g1(5,10)=1;
g1(6,5)=(-(T(2)*getPowerDeriv(y(5),1-params(1),1)));
g1(6,6)=1;
g1(6,1)=(-(T(3)*y(12)*getPowerDeriv(y(1),params(1),1)));
g1(6,12)=(-(T(1)*T(3)));
g1(7,4)=(-1);
g1(7,6)=1;
g1(7,7)=(-1);
g1(7,9)=(-1);
g1(8,7)=(-1);
g1(8,1)=(-(1-params(4)));
g1(8,8)=1;
g1(9,3)=(-(params(7)*1/y(3)));
g1(9,12)=1/y(12);
g1(9,17)=(-1);
g1(10,2)=(-(params(8)*1/y(2)));
g1(10,9)=1/y(9);
g1(10,16)=(-1);

end
