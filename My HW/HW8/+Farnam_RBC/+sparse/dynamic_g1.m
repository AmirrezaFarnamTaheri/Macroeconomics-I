function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = Farnam_RBC.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(29, 1);
g1_v(1)=(-(T(6)*(1-params(3))*y(13)*T(10)));
g1_v(2)=(-(T(9)*params(3)*y(13)*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(3)=(-(T(9)*y(13)*T(10)));
g1_v(4)=(-(1-params(2)));
g1_v(5)=(-(params(4)*1/y(5)));
g1_v(6)=1;
g1_v(7)=1;
g1_v(8)=(-1);
g1_v(9)=(-1);
g1_v(10)=1;
g1_v(11)=y(14)*T(2)*params(7)*T(11)/(1-params(6))*T(12);
g1_v(12)=(-(y(14)*params(7)*T(11)));
g1_v(13)=(-((1-params(3))*y(13)*T(5)*getPowerDeriv(y(12),(-params(3)),1)));
g1_v(14)=(-(T(8)*T(13)));
g1_v(15)=(-(y(13)*T(5)*T(13)));
g1_v(16)=(-(T(6)*(1-params(3))*T(5)));
g1_v(17)=(-(T(9)*params(3)*T(7)));
g1_v(18)=(-(T(5)*T(9)));
g1_v(19)=1/y(13);
g1_v(20)=T(2)*T(12);
g1_v(21)=(-(params(7)*T(1)));
g1_v(22)=(-1);
g1_v(23)=1;
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=(-((y(24)+1-params(2))*params(1)*y(22)*T(3)*params(7)*(-(getPowerDeriv(1-y(20),(-params(6)),1)))/(1-params(6))*T(14)));
g1_v(27)=(-((y(24)+1-params(2))*params(1)*T(3)*T(14)));
g1_v(28)=(-T(4));
g1_v(29)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 25);
end
