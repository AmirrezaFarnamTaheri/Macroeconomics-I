function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = solow.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(26, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(params(7)*T(2)));
g1_v(4)=1;
g1_v(5)=(-(T(4)*exp(y(7))*(1-params(3))*T(7)));
g1_v(6)=(-(T(6)*params(3)*exp(y(7))*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(7)=(-(T(6)*exp(y(7))*T(7)));
g1_v(8)=1-(1-params(2));
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=(-(T(1)*params(7)*(-(getPowerDeriv(1-y(5),1-params(6),1)))/(1-params(6))));
g1_v(12)=(-(params(7)*y(2)*(-(getPowerDeriv(1-y(5),(-params(6)),1)))));
g1_v(13)=(-(exp(y(7))*(1-params(3))*T(3)*getPowerDeriv(y(5),(-params(3)),1)));
g1_v(14)=(-(T(5)*T(8)));
g1_v(15)=(-(exp(y(7))*T(3)*T(8)));
g1_v(16)=1;
g1_v(17)=1;
g1_v(18)=(-(exp(y(7))*(1-params(3))*T(3)*T(4)));
g1_v(19)=(-(T(5)*T(6)));
g1_v(20)=(-(T(6)*exp(y(7))*T(3)));
g1_v(21)=1-params(4);
g1_v(22)=(-params(1));
g1_v(23)=(-1);
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
