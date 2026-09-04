function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(10, 1);
end
[T_order, T] = Farnam_RBC_5.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(44, 1);
g1_v(1)=(-(T(4)*params(1)*y(21)*getPowerDeriv(y(5),params(1)-1,1)));
g1_v(2)=(-(T(6)*y(21)*(1-params(1))*T(10)));
g1_v(3)=(-(T(4)*y(21)*T(10)));
g1_v(4)=(-(1-params(3)));
g1_v(5)=(-(params(7)*1/y(8)));
g1_v(6)=(-(1/y(9)));
g1_v(7)=(-params(8));
g1_v(8)=(-params(8));
g1_v(9)=(-(y(19)*(-1)/(y(14)*y(14))));
g1_v(10)=(-1)/(y(14)*y(14));
g1_v(11)=(-1)/(y(14)*y(14));
g1_v(12)=(-1);
g1_v(13)=(-(params(5)*(1+y(24))/y(24)*T(8)));
g1_v(14)=params(4)/((1-y(15))*(1-y(15)));
g1_v(15)=(-(T(3)*T(9)));
g1_v(16)=(-(y(21)*(1-params(1))*T(5)*getPowerDeriv(y(15),(-params(1)),1)));
g1_v(17)=(-(y(21)*T(5)*T(9)));
g1_v(18)=1;
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=(-1);
g1_v(22)=1;
g1_v(23)=(-T(1));
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=(-(T(4)*params(1)*T(2)));
g1_v(27)=(-(T(6)*(1-params(1))*T(5)));
g1_v(28)=(-(T(4)*T(5)));
g1_v(29)=1/y(21);
g1_v(30)=1;
g1_v(31)=1/y(22);
g1_v(32)=1;
g1_v(33)=(-(T(8)*(y(14)*params(5)*y(24)-y(14)*params(5)*(1+y(24)))/(y(24)*y(24))));
g1_v(34)=(-T(7));
g1_v(35)=(-(params(2)*1/y(27)));
g1_v(36)=1;
g1_v(37)=1;
g1_v(38)=(-1);
g1_v(39)=(-((y(33)+1-params(3))*params(2)*(-1)/(y(27)*y(27))));
g1_v(40)=(-((1+y(25))*params(2)*(-1)/(y(27)*y(27))));
g1_v(41)=(-(params(2)*1/y(27)));
g1_v(42)=(-((1+y(24))*getPowerDeriv(1+y(36),(-1),1)));
g1_v(43)=(-1);
g1_v(44)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 13, 41);
end
