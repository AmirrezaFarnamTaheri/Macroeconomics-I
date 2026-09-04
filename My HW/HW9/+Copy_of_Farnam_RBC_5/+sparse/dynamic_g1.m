function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Copy_of_Farnam_RBC_5.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(31, 1);
g1_v(1)=(-((-(params(1)*y(13)))/(y(5)*y(5))));
g1_v(2)=(-(T(3)*y(19)*getPowerDeriv(y(5),params(1),1)));
g1_v(3)=(-(1-params(4)));
g1_v(4)=(-(params(8)*1/y(6)));
g1_v(5)=(-(params(7)*1/y(9)));
g1_v(6)=(-((-1)/(y(11)*y(11))));
g1_v(7)=(-1);
g1_v(8)=params(5)*getPowerDeriv(y(12),params(3),1);
g1_v(9)=(-((-((1-params(1))*y(13)))/(y(12)*y(12))));
g1_v(10)=(-(T(2)*getPowerDeriv(y(12),1-params(1),1)));
g1_v(11)=(-((1-params(1))/y(12)));
g1_v(12)=(-(params(1)/y(5)));
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-1);
g1_v(16)=(-1);
g1_v(17)=1;
g1_v(18)=(-1);
g1_v(19)=1/y(16);
g1_v(20)=1;
g1_v(21)=(-y(20));
g1_v(22)=1;
g1_v(23)=(-(T(1)*T(3)));
g1_v(24)=1/y(19);
g1_v(25)=1;
g1_v(26)=(-y(18));
g1_v(27)=1;
g1_v(28)=(-(params(2)*y(30)));
g1_v(29)=(-(params(2)*(1+y(27)-params(4))));
g1_v(30)=(-1);
g1_v(31)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 32);
end
