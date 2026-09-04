function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11)=T(6)*T(1)*T(2);
  y(14)=y(11)-y(12);
  y(19)=y(18)-params(2);
end
