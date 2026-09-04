function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Farnam_RBC.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,1)=(-(T(1)*T(5)))/(T(2)*T(2));
g1(1,2)=params(3)*getPowerDeriv(y(2),params(6),1)/T(2);
g1(1,7)=(-(1-y(9)));
g1(1,9)=y(7);
g1(2,1)=(-T(5))/(T(2)*T(2))-(-(params(2)*(1+y(8)*(1-y(10)))*T(5)))/(T(2)*T(2));
g1(2,8)=(-(params(2)*(1-y(10))/T(2)));
g1(2,10)=(-(params(2)*(-y(8))/T(2)));
g1(3,2)=(-((-((1-params(1))*y(3)))/(y(2)*y(2))));
g1(3,3)=(-((1-params(1))/y(2)));
g1(3,7)=1;
g1(4,3)=(-(params(1)/y(5)));
g1(4,5)=(-((-(params(1)*y(3)))/(y(5)*y(5))));
g1(4,8)=1;
g1(5,2)=(-(T(3)*getPowerDeriv(y(2),1-params(1),1)));
g1(5,3)=1;
g1(5,5)=(-(T(4)*params(10)*getPowerDeriv(y(5),params(1),1)));
g1(6,1)=(-1);
g1(6,3)=1;
g1(6,4)=(-1);
g1(6,6)=(-1);
g1(7,4)=(-1);
g1(7,5)=1-(1-params(4));
g1(8,6)=1/y(6)-params(7)*1/y(6);
g1(9,9)=1/y(9)-params(8)*1/y(9);
g1(10,10)=1/y(10)-params(9)*1/y(10);

end
