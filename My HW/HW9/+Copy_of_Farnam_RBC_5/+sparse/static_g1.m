function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = Copy_of_Farnam_RBC_5.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(25, 1);
g1_v(1)=(-((-1)/(y(1)*y(1))));
g1_v(2)=(-1);
g1_v(3)=params(5)*getPowerDeriv(y(2),params(3),1);
g1_v(4)=(-((-((1-params(1))*y(3)))/(y(2)*y(2))));
g1_v(5)=(-(T(2)*getPowerDeriv(y(2),1-params(1),1)));
g1_v(6)=(-((1-params(1))/y(2)));
g1_v(7)=(-(params(1)/y(5)));
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=(-((-(params(1)*y(3)))/(y(5)*y(5))));
g1_v(13)=(-(T(3)*y(9)*getPowerDeriv(y(5),params(1),1)));
g1_v(14)=1-(1-params(4));
g1_v(15)=(-1);
g1_v(16)=1/y(6)-params(8)*1/y(6);
g1_v(17)=(-(y(10)*params(2)));
g1_v(18)=1;
g1_v(19)=(-y(10));
g1_v(20)=1;
g1_v(21)=(-(T(1)*T(3)));
g1_v(22)=1/y(9)-params(7)*1/y(9);
g1_v(23)=1;
g1_v(24)=(-y(8));
g1_v(25)=1-params(2)*(1+y(7)-params(4));
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
