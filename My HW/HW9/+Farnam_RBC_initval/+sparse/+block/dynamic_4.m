function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  T(1)=y(17)*y(15)^params(3);
  T(2)=y(16)^(1-params(3));
  residual(1)=(y(13))-(T(1)*T(2));
  residual(2)=(y(13))-(y(18)+y(14)+y(21));
  residual(3)=(y(24))-(1/y(18));
  residual(4)=(params(8)*y(16)^params(9))-(y(24)*y(19)*(1-y(22)));
  residual(5)=(y(19))-((1-params(3))*y(13)/y(16));
  residual(6)=(y(15))-(y(14)+(1-params(2))*y(3));
  residual(7)=(y(20))-(params(3)*y(13)/y(15));
  residual(8)=(y(24))-(params(1)*y(36)*(1+y(32)*(1-y(35))-params(2)));
if nargout > 3
    g1_v = NaN(23, 1);
g1_v(1)=(-(1-params(2)));
g1_v(2)=(-(T(1)*getPowerDeriv(y(16),1-params(3),1)));
g1_v(3)=params(8)*getPowerDeriv(y(16),params(9),1);
g1_v(4)=(-((-((1-params(3))*y(13)))/(y(16)*y(16))));
g1_v(5)=(-1);
g1_v(6)=(-1);
g1_v(7)=(-1);
g1_v(8)=(-((-1)/(y(18)*y(18))));
g1_v(9)=(-(y(24)*(1-y(22))));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=1;
g1_v(13)=(-((1-params(3))/y(16)));
g1_v(14)=(-(params(3)/y(15)));
g1_v(15)=(-(T(2)*y(17)*getPowerDeriv(y(15),params(3),1)));
g1_v(16)=1;
g1_v(17)=(-((-(params(3)*y(13)))/(y(15)*y(15))));
g1_v(18)=1;
g1_v(19)=1;
g1_v(20)=(-(y(19)*(1-y(22))));
g1_v(21)=1;
g1_v(22)=(-(params(1)*y(36)*(1-y(35))));
g1_v(23)=(-(params(1)*(1+y(32)*(1-y(35))-params(2))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 24);
end
end
