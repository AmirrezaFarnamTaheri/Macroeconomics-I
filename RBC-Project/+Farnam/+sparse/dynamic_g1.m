function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = Farnam.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(26, 1);
g1_v(1)=(-1);
g1_v(2)=(-(1-params(2)));
g1_v(3)=(-params(4));
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-1);
g1_v(7)=(-(T(2)*(1-params(3))*exp(y(13))*T(5)));
g1_v(8)=(-(T(4)*params(3)*exp(y(13))*getPowerDeriv(y(11),params(3)-1,1)));
g1_v(9)=(-(T(4)*exp(y(13))*T(5)));
g1_v(10)=1;
g1_v(11)=(-((1-params(3))*exp(y(13))*T(1)*getPowerDeriv(y(12),(-params(3)),1)));
g1_v(12)=(-(T(3)*T(6)));
g1_v(13)=(-(exp(y(13))*T(1)*T(6)));
g1_v(14)=(-((1-params(3))*exp(y(13))*T(1)*T(2)));
g1_v(15)=(-(T(3)*T(4)));
g1_v(16)=(-(T(4)*exp(y(13))*T(1)));
g1_v(17)=1;
g1_v(18)=(-1)/(y(14)*y(14));
g1_v(19)=(-params(5));
g1_v(20)=(-1);
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=1;
g1_v(24)=(-((y(24)+1-params(2))*params(1)*(-1)/(y(22)*y(22))));
g1_v(25)=(-(params(1)*1/y(22)));
g1_v(26)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 25);
end
