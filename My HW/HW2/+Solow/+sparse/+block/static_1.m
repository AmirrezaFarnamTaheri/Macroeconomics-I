function [y, T, residual, g1] = static_1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(1)=y(1)^params(3);
  T(2)=y(2)^params(4);
  T(3)=T(1)*T(2);
  residual(1)=(y(1))-(params(1)*T(3)-y(1)*(params(7)+params(6)+params(5)-1));
  residual(2)=(y(2))-(T(3)*params(2)-y(1)*(params(7)+params(6)+params(5)-1));
  T(4)=T(2)*getPowerDeriv(y(1),params(3),1);
  T(5)=T(1)*getPowerDeriv(y(2),params(4),1);
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=1-(params(1)*T(4)-(params(7)+params(6)+params(5)-1));
g1_v(2)=(-(params(2)*T(4)-(params(7)+params(6)+params(5)-1)));
g1_v(3)=(-(params(1)*T(5)));
g1_v(4)=1-params(2)*T(5);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
