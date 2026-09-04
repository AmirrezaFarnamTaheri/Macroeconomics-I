function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = Farnam_RBC.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(33, 1);
g1_v(1)=(-(1-params(4)));
g1_v(2)=(-(params(7)*1/y(6)));
g1_v(3)=(-(params(8)*1/y(9)));
g1_v(4)=(-(params(9)*1/y(10)));
g1_v(5)=(-(T(1)*T(6)))/(T(2)*T(2));
g1_v(6)=(-T(6))/(T(2)*T(2));
g1_v(7)=(-1);
g1_v(8)=params(3)*getPowerDeriv(y(12),params(6),1)/T(2);
g1_v(9)=(-((-((1-params(1))*y(13)))/(y(12)*y(12))));
g1_v(10)=(-(T(4)*getPowerDeriv(y(12),1-params(1),1)));
g1_v(11)=(-((1-params(1))/y(12)));
g1_v(12)=(-(params(1)/y(15)));
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-1);
g1_v(16)=(-1);
g1_v(17)=(-((-(params(1)*y(13)))/(y(15)*y(15))));
g1_v(18)=(-(T(5)*params(10)*getPowerDeriv(y(15),params(1),1)));
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=1/y(16);
g1_v(22)=(-(1-y(19)));
g1_v(23)=1;
g1_v(24)=(-(params(2)*(1-y(20))/T(3)));
g1_v(25)=1;
g1_v(26)=y(17);
g1_v(27)=1/y(19);
g1_v(28)=(-(params(2)*(-y(18))/T(3)));
g1_v(29)=1/y(20);
g1_v(30)=(-((-(params(2)*(1+y(18)*(1-y(20)))*getPowerDeriv(y(21),params(5),1)))/(T(3)*T(3))));
g1_v(31)=(-1);
g1_v(32)=(-1);
g1_v(33)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 33);
end
