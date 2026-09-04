function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(7, 1);
  residual(1)=(y(7))-(y(6)*params(5));
  T(1)=exp(y(5));
  T(2)=y(3)^params(3);
  T(3)=y(4)^(-params(3));
  residual(2)=(y(7))-((1-params(3))*T(1)*T(2)*T(3));
  T(4)=params(3)*T(1)*y(3)^(params(3)-1);
  T(5)=y(4)^(1-params(3));
  residual(3)=(y(8))-(T(4)*T(5));
  residual(4)=(y(1))-(T(5)*T(1)*T(2));
  residual(5)=(y(1))-(y(6)+y(2));
  residual(6)=(y(3))-(y(2)+(1-params(2))*y(3));
  residual(7)=(1/y(6))-(1/y(6)*params(1)*(y(8)+1-params(2)));
  T(6)=getPowerDeriv(y(3),params(3),1);
  T(7)=getPowerDeriv(y(4),1-params(3),1);
if nargout > 3
    g1_v = NaN(18, 1);
g1_v(1)=(-params(5));
g1_v(2)=(-1);
g1_v(3)=(-1)/(y(6)*y(6))-(y(8)+1-params(2))*params(1)*(-1)/(y(6)*y(6));
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-(T(3)*(1-params(3))*T(1)*T(6)));
g1_v(7)=(-(T(5)*params(3)*T(1)*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(8)=(-(T(5)*T(1)*T(6)));
g1_v(9)=1-(1-params(2));
g1_v(10)=(-((1-params(3))*T(1)*T(2)*getPowerDeriv(y(4),(-params(3)),1)));
g1_v(11)=(-(T(4)*T(7)));
g1_v(12)=(-(T(1)*T(2)*T(7)));
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-1);
g1_v(16)=(-1);
g1_v(17)=1;
g1_v(18)=(-(1/y(6)*params(1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 7);
end
end
