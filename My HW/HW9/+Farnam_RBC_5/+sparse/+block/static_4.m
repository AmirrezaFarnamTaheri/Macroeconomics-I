function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  residual(1)=(y(9))-((y(1)*params(5)*(1+y(11))/y(11))^params(6));
  T(8)=(1+y(10))^(-1);
  residual(2)=(1+y(12))-((1+y(11))*T(8));
  residual(3)=(y(13))-((1-params(8))*params(9)-y(10)+y(10)*params(8)+y(13)*params(8)+x(2));
  T(9)=log(y(9));
  residual(4)=(T(9))-(y(13)+T(9));
if nargout > 3
    g1_v = NaN(7, 1);
g1_v(1)=1;
g1_v(2)=(-(getPowerDeriv(y(1)*params(5)*(1+y(11))/y(11),params(6),1)*(y(1)*params(5)*y(11)-y(1)*params(5)*(1+y(11)))/(y(11)*y(11))));
g1_v(3)=(-T(8));
g1_v(4)=(-((1+y(11))*getPowerDeriv(1+y(10),(-1),1)));
g1_v(5)=(-(params(8)-1));
g1_v(6)=1-params(8);
g1_v(7)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
