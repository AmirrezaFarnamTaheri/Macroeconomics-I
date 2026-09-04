function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  residual(1)=(y(10))-(y(10)*params(2)*(1+y(7)-params(4)));
  residual(2)=(y(8))-((1-params(1))*y(3)/y(2));
  residual(3)=(y(7))-(params(1)*y(3)/y(5));
  T(3)=y(9)*y(5)^params(1);
  T(4)=y(2)^(1-params(1));
  residual(4)=(y(3))-(T(3)*T(4));
  residual(5)=(y(3))-(y(1)+y(4)+y(6));
  residual(6)=(y(5))-(y(4)+y(5)*(1-params(4)));
  residual(7)=(y(10))-(1/y(1));
  residual(8)=(params(5)*y(2)^params(3))-(y(10)*y(8));
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=(-(y(10)*params(2)));
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=(-y(10));
g1_v(5)=(-((1-params(1))/y(2)));
g1_v(6)=(-(params(1)/y(5)));
g1_v(7)=1;
g1_v(8)=1;
g1_v(9)=(-((-((1-params(1))*y(3)))/(y(2)*y(2))));
g1_v(10)=(-(T(3)*getPowerDeriv(y(2),1-params(1),1)));
g1_v(11)=params(5)*getPowerDeriv(y(2),params(3),1);
g1_v(12)=(-1);
g1_v(13)=(-1);
g1_v(14)=(-((-(params(1)*y(3)))/(y(5)*y(5))));
g1_v(15)=(-(T(4)*y(9)*getPowerDeriv(y(5),params(1),1)));
g1_v(16)=1-(1-params(4));
g1_v(17)=(-1);
g1_v(18)=(-((-1)/(y(1)*y(1))));
g1_v(19)=1-params(2)*(1+y(7)-params(4));
g1_v(20)=1;
g1_v(21)=(-y(8));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 8);
end
end
