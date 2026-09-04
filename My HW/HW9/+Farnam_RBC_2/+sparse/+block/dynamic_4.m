function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  T(7)=(1+y(36))^(-1);
  residual(1)=(1+y(25))-((1+y(24))*T(7));
  residual(2)=(y(22))-((y(14)*params(5)*(1+y(24))/y(24))^params(6));
  residual(3)=(log(y(22)))-(y(26)+log(y(9)));
  residual(4)=(y(26))-((1-params(8))*params(9)-y(23)+params(8)*y(10)+params(8)*y(13)+x(2));
if nargout > 3
    g1_v = NaN(11, 1);
g1_v(1)=(-(1/y(9)));
g1_v(2)=(-params(8));
g1_v(3)=(-params(8));
g1_v(4)=(-T(7));
g1_v(5)=(-(getPowerDeriv(y(14)*params(5)*(1+y(24))/y(24),params(6),1)*(y(14)*params(5)*y(24)-y(14)*params(5)*(1+y(24)))/(y(24)*y(24))));
g1_v(6)=1;
g1_v(7)=1/y(22);
g1_v(8)=(-1);
g1_v(9)=1;
g1_v(10)=1;
g1_v(11)=(-((1+y(24))*getPowerDeriv(1+y(36),(-1),1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 12);
end
end
