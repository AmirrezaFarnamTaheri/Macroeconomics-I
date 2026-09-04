var Y I K N z C w Rk ; % Declaration of endogenous variables
varexo eA; % Declaration of exogenous variables

parameters beta delta alpha rhoA sigma zeta theta; % Declaration of parameters

% Assign parameter values
beta = 0.99; % Discount factor
delta = 0.025; % Depreciation rate
alpha = 1/3; % Capital share in production
rhoA = 0.95; % Autoregressive coefficient for technology shock
sigma = 2; % Intertemporal elasticity of substitution
zeta = 2; % Elasticity parameter for utility function
theta = 0.5; % Leisure preference parameter

% Model block
model;
  % Euler equation for consumption and capital
  (C(-3) * exp((theta*(1-N(-3))^(-zeta)-1)/(1-zeta)))^(1-sigma) = beta * (C(+1) * exp((theta*(1-N(+1))^(-zeta)-1)/(1-zeta)))^(1-sigma) * (Rk(+1) + (1 - delta));
  
  % Labor supply equation
  w = C*theta*(1-N)^(-zeta);
  
  % Marginal product of labor equals wage
  w = (1 - alpha) * z * (K(-1)^alpha) * (N^(-alpha));
  
  % Marginal product of capital equals rental rate of capital
  Rk = alpha * z * (K(-1)^(alpha-1)) * (N^(1-alpha));
  
  % Production function
  Y = z * (K(-1)^alpha) * (N^(1-alpha));
  
  % Resource constraint
  Y = C + I;
  
  % Law of motion for capital
  K = I + (1-delta)*K(-1);
  
  % Technology follows an AR(1) process
  log(z) = rhoA * log(z(-1)) + eA;
end;


% Initial conditions
initval;
 z = 1;
 Rk = 0.035;
 N = 0.477;
 Y = 1.471;
 C = 1.121;
 I = 0.349;
 K = 13.971;
 w = 2.054;
end;

% Shocks block
shocks;
    var eA = 0.01; % Variance of technology shock
end;

check; % Check the model

steady; % Compute the steady state

stoch_simul(hp_filter = 1600, irf=120, order = 1); % Simulate the model and compute IRFs

write_latex_definitions; % Write LaTeX definitions for variables
write_latex_parameter_table; % Write LaTeX table for parameters
write_latex_original_model; % Write LaTeX code for original model equations
write_latex_dynamic_model; % Write LaTeX code for dynamic model equations
write_latex_static_model; % Write LaTeX code for static model equations
save_params_and_steady_state('rbc_ss.tex'); % Save parameters and steady state values
collect_latex_files; % Collect all LaTeX files