function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  T(1)=params(10)*y(15)^params(1);
  T(2)=y(12)^(1-params(1));
  y(13)=T(1)*T(2);
  y(17)=(1-params(1))*y(13)/y(12);
  y(18)=params(1)*y(13)/y(15);
  residual(1)=(y(13))-(y(11)+y(14)+y(16));
  T(3)=params(3)*y(12)^params(6);
  T(4)=y(11)^params(5);
  residual(2)=(T(3)/T(4))-((1-y(19))*y(17));
  residual(3)=(y(15))-(y(14)+(1-params(4))*y(5));
  T(5)=y(21)^params(5);
  residual(4)=(1/T(4))-(params(2)*(1+y(18)*(1-y(20)))/T(5));
  T(6)=getPowerDeriv(y(11),params(5),1);
  T(7)=T(1)*getPowerDeriv(y(12),1-params(1),1);
  T(8)=T(2)*params(10)*getPowerDeriv(y(15),params(1),1);
if nargout > 3
    g1_v = NaN(14, 1);
g1_v(1)=(-(1-params(4)));
g1_v(2)=(-1);
g1_v(3)=(-1);
g1_v(4)=T(7);
g1_v(5)=params(3)*getPowerDeriv(y(12),params(6),1)/T(4)-(1-y(19))*(y(12)*(1-params(1))*T(7)-(1-params(1))*y(13))/(y(12)*y(12));
g1_v(6)=(-(params(2)*(1-y(20))*params(1)*T(7)/y(15)/T(5)));
g1_v(7)=T(8);
g1_v(8)=(-((1-y(19))*(1-params(1))*T(8)/y(12)));
g1_v(9)=1;
g1_v(10)=(-(params(2)*(1-y(20))*(y(15)*params(1)*T(8)-params(1)*y(13))/(y(15)*y(15))/T(5)));
g1_v(11)=(-1);
g1_v(12)=(-(T(3)*T(6)))/(T(4)*T(4));
g1_v(13)=(-T(6))/(T(4)*T(4));
g1_v(14)=(-((-(params(2)*(1+y(18)*(1-y(20)))*getPowerDeriv(y(21),params(5),1)))/(T(5)*T(5))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 12);
end
end
