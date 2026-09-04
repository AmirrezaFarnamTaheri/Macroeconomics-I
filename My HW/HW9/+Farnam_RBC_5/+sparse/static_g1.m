function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(11, 1);
end
[T_order, T] = Farnam_RBC_5.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(34, 1);
g1_v(1)=(-(y(6)*T(8)));
g1_v(2)=T(8)-(y(7)+1-params(3))*params(2)*T(8);
g1_v(3)=T(8)-(1+y(12))*params(2)*T(8);
g1_v(4)=(-1);
g1_v(5)=(-(params(5)*(1+y(11))/y(11)*T(9)));
g1_v(6)=params(4)/((1-y(2))*(1-y(2)));
g1_v(7)=(-(T(3)*T(10)));
g1_v(8)=(-(y(8)*(1-params(1))*T(5)*getPowerDeriv(y(2),(-params(1)),1)));
g1_v(9)=(-(y(8)*T(5)*T(10)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-1);
g1_v(13)=(-1);
g1_v(14)=(-(T(4)*params(1)*y(8)*getPowerDeriv(y(5),params(1)-1,1)));
g1_v(15)=(-(T(6)*y(8)*(1-params(1))*T(11)));
g1_v(16)=(-(T(4)*y(8)*T(11)));
g1_v(17)=1-(1-params(3));
g1_v(18)=(-T(1));
g1_v(19)=1;
g1_v(20)=(-(T(1)*params(2)));
g1_v(21)=1;
g1_v(22)=(-(T(4)*params(1)*T(2)));
g1_v(23)=(-(T(6)*(1-params(1))*T(5)));
g1_v(24)=(-(T(4)*T(5)));
g1_v(25)=1/y(8)-params(7)*1/y(8);
g1_v(26)=1;
g1_v(27)=(-((1+y(11))*getPowerDeriv(1+y(10),(-1),1)));
g1_v(28)=(-(params(8)-1));
g1_v(29)=(-(T(9)*(y(1)*params(5)*y(11)-y(1)*params(5)*(1+y(11)))/(y(11)*y(11))));
g1_v(30)=(-T(7));
g1_v(31)=(-(T(1)*params(2)));
g1_v(32)=1;
g1_v(33)=1-params(8);
g1_v(34)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 13, 13);
end
