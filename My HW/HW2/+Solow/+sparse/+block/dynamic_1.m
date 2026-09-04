function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=y(1)^params(3)*y(2)^params(4);
  y(4)=params(1)*T(1)-(params(7)+params(6)+params(5)-1)*y(1);
  y(5)=params(2)*T(1)-(params(7)+params(6)+params(5)-1)*y(1);
  y(6)=T(1);
end
