function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Farnam_RBC_initval.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(39, 1);
g1_v(1)=(-(1-params(2)));
g1_v(2)=(-(params(4)*1/y(5)));
g1_v(3)=(-(params(5)*1/y(9)));
g1_v(4)=(-params(6));
g1_v(5)=(-params(7));
g1_v(6)=(-((1-params(3))/y(16)));
g1_v(7)=(-(params(3)/y(15)));
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=(-((-(params(3)*y(13)))/(y(15)*y(15))));
g1_v(13)=(-(T(3)*y(17)*getPowerDeriv(y(15),params(3),1)));
g1_v(14)=1;
g1_v(15)=params(8)*getPowerDeriv(y(16),params(9),1);
g1_v(16)=(-((-((1-params(3))*y(13)))/(y(16)*y(16))));
g1_v(17)=(-(T(2)*getPowerDeriv(y(16),1-params(3),1)));
g1_v(18)=(-(T(1)*T(3)));
g1_v(19)=1/y(17);
g1_v(20)=(-((-1)/(y(18)*y(18))));
g1_v(21)=(-1);
g1_v(22)=(-(y(24)*(1-y(22))));
g1_v(23)=1;
g1_v(24)=1;
g1_v(25)=(-1);
g1_v(26)=1/y(21);
g1_v(27)=y(24)*y(19);
g1_v(28)=1;
g1_v(29)=1;
g1_v(30)=1;
g1_v(31)=(-(y(19)*(1-y(22))));
g1_v(32)=1;
g1_v(33)=(-(params(1)*y(36)*(1-y(35))));
g1_v(34)=(-(params(1)*y(36)*(-y(32))));
g1_v(35)=(-(params(1)*(1+y(32)*(1-y(35))-params(2))));
g1_v(36)=(-1);
g1_v(37)=(-1);
g1_v(38)=(-1);
g1_v(39)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 12, 40);
end
