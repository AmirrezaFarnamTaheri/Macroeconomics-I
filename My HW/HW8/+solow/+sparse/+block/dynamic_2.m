function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(1)=exp(y(17));
  T(2)=y(13)^params(3);
  T(3)=T(1)*(1-params(3))*T(2);
  y(16)=T(3)*y(15)^(-params(3));
  T(4)=exp(params(7)*((1-y(15))^(1-params(6))-1)/(1-params(6)));
  y(20)=T(4);
  T(5)=params(3)*T(1)*y(13)^(params(3)-1);
  T(6)=y(15)^(1-params(3));
  y(18)=T(5)*T(6);
  T(7)=(1-y(15))^(-params(6));
  residual(1)=(y(16))-(params(7)*y(12)*T(7));
  T(8)=(y(20)/y(10))^(1-params(5))*params(1);
  residual(2)=((y(12)/y(2))^params(3))-(T(8)*(1+y(18)-params(2)));
  T(9)=getPowerDeriv(y(20)/y(10),1-params(5),1);
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=T(3)*getPowerDeriv(y(15),(-params(3)),1)-params(7)*y(12)*(-(getPowerDeriv(1-y(15),(-params(6)),1)));
g1_v(2)=(-((1+y(18)-params(2))*params(1)*T(9)*T(4)*params(7)*(-(getPowerDeriv(1-y(15),1-params(6),1)))/(1-params(6))/y(10)+T(8)*T(5)*getPowerDeriv(y(15),1-params(3),1)));
g1_v(3)=(-(params(7)*T(7)));
g1_v(4)=getPowerDeriv(y(12)/y(2),params(3),1)*1/y(2);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
