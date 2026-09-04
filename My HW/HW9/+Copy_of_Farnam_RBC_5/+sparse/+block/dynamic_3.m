function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(7, 1);
  y(18)=(1-params(1))*y(13)/y(12);
  T(1)=y(19)*y(5)^params(1);
  T(2)=y(12)^(1-params(1));
  residual(1)=(y(13))-(T(1)*T(2));
  residual(2)=(y(13))-(y(11)+y(14)+y(16));
  residual(3)=(y(20))-(1/y(11));
  residual(4)=(params(5)*y(12)^params(3))-(y(20)*y(18));
  residual(5)=(y(15))-(y(14)+y(5)*(1-params(4)));
  residual(6)=(y(20))-(params(2)*y(30)*(1+y(27)-params(4)));
  residual(7)=(y(17))-(params(1)*y(13)/y(5));
if nargout > 3
    g1_v = NaN(20, 1);
g1_v(1)=(-(T(2)*y(19)*getPowerDeriv(y(5),params(1),1)));
g1_v(2)=(-(1-params(4)));
g1_v(3)=(-((-(params(1)*y(13)))/(y(5)*y(5))));
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-(y(20)*(1-params(1))/y(12)));
g1_v(7)=(-(params(1)/y(5)));
g1_v(8)=(-1);
g1_v(9)=(-1);
g1_v(10)=(-1);
g1_v(11)=(-((-1)/(y(11)*y(11))));
g1_v(12)=(-(T(1)*getPowerDeriv(y(12),1-params(1),1)));
g1_v(13)=params(5)*getPowerDeriv(y(12),params(3),1)-y(20)*(-((1-params(1))*y(13)))/(y(12)*y(12));
g1_v(14)=1;
g1_v(15)=1;
g1_v(16)=(-y(18));
g1_v(17)=1;
g1_v(18)=1;
g1_v(19)=(-(params(2)*(1+y(27)-params(4))));
g1_v(20)=(-(params(2)*y(30)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 21);
end
end
