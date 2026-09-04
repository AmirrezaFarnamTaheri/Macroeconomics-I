function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13)=y(4)+(1-params(2))*y(3);
  y(17)=params(4)*y(7)+x(1);
end
