function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(7, 1);
  T(1)=y(5)^params(1);
  T(2)=y(15)^(-params(1));
  residual(1)=(y(19))-(y(21)*(1-params(1))*T(1)*T(2));
  T(3)=y(15)^(1-params(1));
  residual(2)=(y(16))-(T(3)*y(21)*T(1));
  residual(3)=(y(16))-(y(14)+y(17));
  residual(4)=(params(4)/(1-y(15)))-(1/y(14)*y(19));
  residual(5)=(y(18))-(y(17)+(1-params(3))*y(5));
  residual(6)=(1/y(14))-(params(2)*1/y(27)*(y(33)+1-params(3)));
  T(4)=params(1)*y(21)*y(5)^(params(1)-1);
  residual(7)=(y(20))-(T(4)*T(3));
  T(5)=getPowerDeriv(y(15),1-params(1),1);
  T(6)=getPowerDeriv(y(5),params(1),1);
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=(-(T(2)*y(21)*(1-params(1))*T(6)));
g1_v(2)=(-(T(3)*y(21)*T(6)));
g1_v(3)=(-(1-params(3)));
g1_v(4)=(-(T(3)*params(1)*y(21)*getPowerDeriv(y(5),params(1)-1,1)));
g1_v(5)=(-(y(21)*(1-params(1))*T(1)*getPowerDeriv(y(15),(-params(1)),1)));
g1_v(6)=(-(y(21)*T(1)*T(5)));
g1_v(7)=params(4)/((1-y(15))*(1-y(15)));
g1_v(8)=(-(T(4)*T(5)));
g1_v(9)=1;
g1_v(10)=1;
g1_v(11)=(-1);
g1_v(12)=(-1);
g1_v(13)=1;
g1_v(14)=(-(1/y(14)));
g1_v(15)=1;
g1_v(16)=(-1);
g1_v(17)=(-(y(19)*(-1)/(y(14)*y(14))));
g1_v(18)=(-1)/(y(14)*y(14));
g1_v(19)=1;
g1_v(20)=(-((y(33)+1-params(3))*params(2)*(-1)/(y(27)*y(27))));
g1_v(21)=(-(params(2)*1/y(27)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 21);
end
end
