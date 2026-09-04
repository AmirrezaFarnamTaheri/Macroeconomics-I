var Y I K N A C w Rk ; % Declaration of endogenous variables
varexo eA; % Declaration of exogenous variables

parameters beta delta alpha rhoA con; % Declaration of parameters

% Assign parameter values
beta = 0.99;
delta = 0.025;
alpha = 0.36;
rhoA = 0.95;
con = 3;

model; % Begin model block
  
  % (1) Euler equation for capital (Intertemporal consumption choice)
  (1/C) = beta * (1/(C(+1))) * (Rk(+1) + (1 - delta)); % Euler equation for capital

  % (2) Labor supply equation (Marginal rate of substitution between consumption and leisure)
  w = con * C ;

  % (3) Labor demand equation (Marginal product of labor)
  w = (1 - alpha) * exp(A) * (K^alpha) * (N^(-alpha));

  % (4) Capital demand equation (Marginal product of capital)
  Rk = alpha * exp(A) * (K^(alpha-1)) * (N^(1-alpha));

  % (5) Production function (Cobb-Douglas)
  Y = exp(A) * (K^alpha) * (N^(1-alpha));

  % (6) Resource constraint (Goods market clearing condition)
  Y = C + I;

  % (7) Law of motion for capital (Capital accumulation equation)
  K = I(-1) + (1-delta)*K(-1);
  
  % (8) Total Factor Productivity (TFP) process (AR(1) process)
  A = rhoA * (A(-1)) + eA;
end; % End model block

%initval; % Begin initial values block (If only steady state is wanted.)
%  Y = 1.06; % Initial value of output
%  C = 0.79; % Initial value of consumption
%  I = 0.27; % Initial value of investment
%  N = 0.28; % Initial value of labor
%  K = 10.9; % Initial value of capital
%  w = 2.37; % Initial value of wage
%  Rk = 0.035; % Initial value of return on capital
%  A = 1; % Initial value of technology level
%end; % End initial values block

shocks;
var eA = 0.01;
end;

steady;

stoch_simul(hp_filter = 1600, irf=100, order = 1);


write_latex_definitions;
write_latex_parameter_table;
write_latex_original_model;
write_latex_dynamic_model;
write_latex_static_model;
collect_latex_files;
save_params_and_steady_state('rbc_ss.tex');
