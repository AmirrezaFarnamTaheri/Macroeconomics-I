function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(11, 1);
end
[T_order, T] = solow.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(33, 1);
g1_v(1)=(-y(12))/(y(2)*y(2))*T(8);
g1_v(2)=(-(1-params(2)));
g1_v(3)=(-1);
g1_v(4)=(-params(4));
g1_v(5)=(-((1+y(18)-params(2))*params(1)*(-y(20))/(y(10)*y(10))*T(11)));
g1_v(6)=(-1);
g1_v(7)=1;
g1_v(8)=T(8)*1/y(2);
g1_v(9)=(-(params(7)*T(3)));
g1_v(10)=1;
g1_v(11)=(-(T(5)*exp(y(17))*(1-params(3))*T(9)));
g1_v(12)=(-(T(7)*params(3)*exp(y(17))*getPowerDeriv(y(13),params(3)-1,1)));
g1_v(13)=(-(T(7)*exp(y(17))*T(9)));
g1_v(14)=1;
g1_v(15)=1;
g1_v(16)=(-(T(1)*params(7)*(-(getPowerDeriv(1-y(15),1-params(6),1)))/(1-params(6))));
g1_v(17)=(-(params(7)*y(12)*(-(getPowerDeriv(1-y(15),(-params(6)),1)))));
g1_v(18)=(-(exp(y(17))*(1-params(3))*T(4)*getPowerDeriv(y(15),(-params(3)),1)));
g1_v(19)=(-(T(6)*T(10)));
g1_v(20)=(-(exp(y(17))*T(4)*T(10)));
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=(-(exp(y(17))*(1-params(3))*T(4)*T(5)));
g1_v(24)=(-(T(6)*T(7)));
g1_v(25)=(-(T(7)*exp(y(17))*T(4)));
g1_v(26)=1;
g1_v(27)=(-T(2));
g1_v(28)=(-1);
g1_v(29)=1;
g1_v(30)=1;
g1_v(31)=1;
g1_v(32)=(-((1+y(18)-params(2))*params(1)*T(11)*1/y(10)));
g1_v(33)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 31);
end
