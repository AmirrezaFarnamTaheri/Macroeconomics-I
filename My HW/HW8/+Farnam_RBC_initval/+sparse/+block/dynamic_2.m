function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(6, 1);
  T(1)=(1-y(12))^(-params(6));
  y(15)=T(1)*y(14)*params(7);
  T(2)=y(3)^params(3);
  T(3)=y(12)^(1-params(3));
  residual(1)=(y(9))-(T(3)*y(13)*T(2));
  residual(2)=(y(9))-(y(14)+y(10));
  residual(3)=(y(11))-(y(10)+(1-params(2))*y(3));
  T(4)=y(12)^(-params(3));
  residual(4)=(y(15))-((1-params(3))*y(13)*T(2)*T(4));
  T(5)=params(3)*y(13)*y(3)^(params(3)-1);
  residual(5)=(y(16))-(T(5)*T(3));
  T(6)=exp((params(7)*T(1)-1)/(1-params(6)));
  T(7)=exp((params(7)*(1-y(20))^(-params(6))-1)/(1-params(6)));
  T(8)=params(1)*(y(22)*T(7))^(1-params(5));
  residual(6)=((y(14)*T(6))^(1-params(5)))-(T(8)*(y(24)+1-params(2)));
  T(9)=getPowerDeriv(y(3),params(3),1);
  T(10)=(-(getPowerDeriv(1-y(12),(-params(6)),1)));
  T(11)=getPowerDeriv(y(14)*T(6),1-params(5),1);
  T(12)=getPowerDeriv(y(12),1-params(3),1);
  T(13)=getPowerDeriv(y(22)*T(7),1-params(5),1);
if nargout > 3
    g1_v = NaN(20, 1);
g1_v(1)=(-(T(3)*y(13)*T(9)));
g1_v(2)=(-(1-params(2)));
g1_v(3)=(-(T(4)*(1-params(3))*y(13)*T(9)));
g1_v(4)=(-(T(3)*params(3)*y(13)*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(5)=1;
g1_v(6)=1;
g1_v(7)=(-1);
g1_v(8)=(-1);
g1_v(9)=1;
g1_v(10)=(-(y(13)*T(2)*T(12)));
g1_v(11)=y(14)*params(7)*T(10)-(1-params(3))*y(13)*T(2)*getPowerDeriv(y(12),(-params(3)),1);
g1_v(12)=(-(T(5)*T(12)));
g1_v(13)=y(14)*T(6)*params(7)*T(10)/(1-params(6))*T(11);
g1_v(14)=1;
g1_v(15)=(-1);
g1_v(16)=params(7)*T(1);
g1_v(17)=T(6)*T(11);
g1_v(18)=(-((y(24)+1-params(2))*params(1)*y(22)*T(7)*params(7)*(-(getPowerDeriv(1-y(20),(-params(6)),1)))/(1-params(6))*T(13)));
g1_v(19)=(-T(8));
g1_v(20)=(-((y(24)+1-params(2))*params(1)*T(7)*T(13)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 18);
end
end
