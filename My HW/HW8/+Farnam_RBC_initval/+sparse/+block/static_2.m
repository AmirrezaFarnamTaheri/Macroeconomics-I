function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(7, 1);
  T(2)=(1-y(4))^(-params(6));
  residual(1)=(y(7))-(T(2)*y(6)*params(7));
  T(3)=y(3)^params(3);
  T(4)=y(4)^(-params(3));
  residual(2)=(y(7))-((1-params(3))*y(5)*T(3)*T(4));
  T(5)=params(3)*y(5)*y(3)^(params(3)-1);
  T(6)=y(4)^(1-params(3));
  residual(3)=(y(8))-(T(5)*T(6));
  residual(4)=(y(1))-(T(6)*y(5)*T(3));
  residual(5)=(y(1))-(y(6)+y(2));
  residual(6)=(y(3))-(y(2)+(1-params(2))*y(3));
  T(7)=exp((params(7)*T(2)-1)/(1-params(6)));
  T(8)=(y(6)*T(7))^(1-params(5));
  residual(7)=(T(8))-(T(8)*params(1)*(y(8)+1-params(2)));
  T(9)=getPowerDeriv(y(3),params(3),1);
  T(10)=(-(getPowerDeriv(1-y(4),(-params(6)),1)));
  T(11)=getPowerDeriv(y(6)*T(7),1-params(5),1);
  T(12)=getPowerDeriv(y(4),1-params(3),1);
  T(13)=T(7)*T(11);
if nargout > 3
    g1_v = NaN(20, 1);
g1_v(1)=(-(params(7)*T(2)));
g1_v(2)=(-1);
g1_v(3)=T(13)-(y(8)+1-params(2))*params(1)*T(13);
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-(y(6)*params(7)*T(10)));
g1_v(7)=(-((1-params(3))*y(5)*T(3)*getPowerDeriv(y(4),(-params(3)),1)));
g1_v(8)=(-(T(5)*T(12)));
g1_v(9)=(-(y(5)*T(3)*T(12)));
g1_v(10)=y(6)*T(7)*params(7)*T(10)/(1-params(6))*T(11)-(y(8)+1-params(2))*params(1)*y(6)*T(7)*params(7)*T(10)/(1-params(6))*T(11);
g1_v(11)=(-(T(4)*(1-params(3))*y(5)*T(9)));
g1_v(12)=(-(T(6)*params(3)*y(5)*getPowerDeriv(y(3),params(3)-1,1)));
g1_v(13)=(-(T(6)*y(5)*T(9)));
g1_v(14)=1-(1-params(2));
g1_v(15)=1;
g1_v(16)=1;
g1_v(17)=(-1);
g1_v(18)=(-1);
g1_v(19)=1;
g1_v(20)=(-(T(8)*params(1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 7, 7);
end
end
