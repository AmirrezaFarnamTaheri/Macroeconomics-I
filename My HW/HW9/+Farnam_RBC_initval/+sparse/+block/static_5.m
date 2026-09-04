function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  residual(1)=(y(8))-(params(3)*y(1)/y(3));
  T(3)=y(5)*y(3)^params(3);
  T(4)=y(4)^(1-params(3));
  residual(2)=(y(1))-(T(3)*T(4));
  residual(3)=(y(1))-(y(6)+y(2)+y(9));
  residual(4)=(y(3))-(y(2)+y(3)*(1-params(2)));
  residual(5)=(y(12))-(1/y(6));
  residual(6)=(params(8)*y(4)^params(9))-(y(12)*y(7)*(1-y(10)));
  residual(7)=(y(12))-(y(12)*params(1)*(1+y(8)*(1-y(11))-params(2)));
  residual(8)=(y(7))-((1-params(3))*y(1)/y(4));
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=(-(params(3)/y(3)));
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=(-((1-params(3))/y(4)));
g1_v(5)=(-((-(params(3)*y(1)))/(y(3)*y(3))));
g1_v(6)=(-(T(4)*y(5)*getPowerDeriv(y(3),params(3),1)));
g1_v(7)=1-(1-params(2));
g1_v(8)=(-1);
g1_v(9)=(-((-1)/(y(6)*y(6))));
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=1;
g1_v(13)=(-(y(7)*(1-y(10))));
g1_v(14)=1-params(1)*(1+y(8)*(1-y(11))-params(2));
g1_v(15)=(-(y(12)*(1-y(10))));
g1_v(16)=1;
g1_v(17)=1;
g1_v(18)=(-(y(12)*params(1)*(1-y(11))));
g1_v(19)=(-(T(3)*getPowerDeriv(y(4),1-params(3),1)));
g1_v(20)=params(8)*getPowerDeriv(y(4),params(9),1);
g1_v(21)=(-((-((1-params(3))*y(1)))/(y(4)*y(4))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 8);
end
end
