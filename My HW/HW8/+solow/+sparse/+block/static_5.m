function [y, T] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10)=exp(params(7)*((1-y(5))^(1-params(6))-1)/(1-params(6)));
end
