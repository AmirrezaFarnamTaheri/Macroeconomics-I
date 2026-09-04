function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(22)=(1-params(6))*params(10)+params(6)*y(10)+x(3);
  y(23)=(1-params(7))*params(11)+params(7)*y(11)+x(4);
end
