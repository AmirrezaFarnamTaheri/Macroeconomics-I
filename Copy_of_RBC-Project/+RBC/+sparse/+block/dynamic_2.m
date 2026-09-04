function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  y(15)=y(14)*params(5);
  y(9)=y(14)+y(10);
  T(1)=exp(y(13));
  T(2)=y(11)^params(3);
  T(3)=y(12)^(1-params(3));
  residual(1)=(y(9))-(T(3)*T(1)*T(2));
  residual(2)=(y(19))-(y(10)+(1-params(2))*y(11));
  T(4)=y(12)^(-params(3));
  residual(3)=(y(15))-((1-params(3))*T(1)*T(2)*T(4));
  T(5)=params(3)*T(1)*y(11)^(params(3)-1);
  residual(4)=(y(16))-(T(5)*T(3));
  residual(5)=(1/y(14))-(params(1)*1/y(22)*(y(24)+1-params(2)));
  T(6)=getPowerDeriv(y(11),params(3),1);
  T(7)=getPowerDeriv(y(12),1-params(3),1);
if nargout > 3
    g1_v = NaN(13, 1);
g1_v(1)=(-(T(1)*T(2)*T(7)));
g1_v(2)=(-((1-params(3))*T(1)*T(2)*getPowerDeriv(y(12),(-params(3)),1)));
g1_v(3)=(-(T(5)*T(7)));
g1_v(4)=1;
g1_v(5)=(-1);
g1_v(6)=(-(T(3)*T(1)*T(6)));
g1_v(7)=(-(1-params(2)));
g1_v(8)=(-(T(4)*(1-params(3))*T(1)*T(6)));
g1_v(9)=(-(T(3)*params(3)*T(1)*getPowerDeriv(y(11),params(3)-1,1)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=params(5);
g1_v(13)=(-1)/(y(14)*y(14));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
