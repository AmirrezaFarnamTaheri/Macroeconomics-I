function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(6, 1);
  T(1)=(1-y(5))^(-params(6));
  residual(1)=(y(6))-(params(7)*y(2)*T(1));
  T(2)=exp(y(7));
  T(3)=y(3)^params(3);
  T(4)=y(5)^(-params(3));
  residual(2)=(y(6))-(T(2)*(1-params(3))*T(3)*T(4));
  T(5)=params(3)*T(2)*y(3)^(params(3)-1);
  T(6)=y(5)^(1-params(3));
  residual(3)=(y(8))-(T(5)*T(6));
  residual(4)=(y(2)+y(4))-(y(1));
  residual(5)=(y(1))-(T(6)*T(2)*T(3));
  residual(6)=(y(3))-(y(4)+y(3)*(1-params(2)));
  T(7)=getPowerDeriv(y(3),params(3),1);
  T(8)=getPowerDeriv(y(5),1-params(3),1);
if nargout > 3
    g1_v = NaN(16, 1);
g1_v(1)=1;
g1_v(2)=1;
g1_v(3)=(-(T(4)*T(2)*(1-params(3))*T(7)));
g1_v(4)=(-(T(6)*params(3)*T(2)*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(5)=(-(T(6)*T(2)*T(7)));
g1_v(6)=1-(1-params(2));
g1_v(7)=(-(params(7)*y(2)*(-(getPowerDeriv(1-y(5),(-params(6)),1)))));
g1_v(8)=(-(T(2)*(1-params(3))*T(3)*getPowerDeriv(y(5),(-params(3)),1)));
g1_v(9)=(-(T(5)*T(8)));
g1_v(10)=(-(T(2)*T(3)*T(8)));
g1_v(11)=(-(params(7)*T(1)));
g1_v(12)=1;
g1_v(13)=(-1);
g1_v(14)=1;
g1_v(15)=1;
g1_v(16)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 6);
end
end
