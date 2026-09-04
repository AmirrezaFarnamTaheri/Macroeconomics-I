var C I K N Y w Rk tau_k tau_n G B r lambda;
varexo e_tau_k e_tau_n;

parameters beta theta delta alpha rho_k rho_n chi gamma_k gamma_n A_bar tau_k_bar tau_n_bar G_bar D_bar Y_bar;

beta = 0.99;
theta = 4.0;
delta = 0.025;
alpha = 1/3;
rho_k = 0.9;
rho_n = 0.9;
chi = 1;
gamma_k = 0.025;
gamma_n = 0.025;
tau_k_bar = 0.2;
tau_n_bar = 0.2;
G_bar = 0.2;
D_bar = 0.5;  // Target debt-to-GDP ratio
Y_bar = 1.25; // Initial guess for output

model;
  // Household's first order conditions
  lambda = 1 / C;
  theta * N^chi = lambda * w;
  lambda(-1) = beta * lambda * (1 + r);
  lambda(-1) = lambda * (1 + tau_k + (1 - delta));
  
  // Resource constraint
  Y = C + I + G;

  // Capital accumulation equation
  K = I + (1 - delta) * K(-1);
  
  // Firm's first order conditions
  w = (1 - alpha) * Y / N;
  Rk = alpha * Y / K(-1);

  // Production function
  Y = K(-1)^alpha * N^(1 - alpha);

  // Tax processes
  tau_k = (1 - rho_k) * tau_k_bar + rho_k * tau_k(-1) + (1 - rho_k) * gamma_k * (B/Y - D_bar/Y_bar) + e_tau_k;
  tau_n = (1 - rho_n) * tau_n_bar + rho_n * tau_n(-1) + (1 - rho_n) * gamma_n * (B/Y - D_bar/Y_bar) + e_tau_n;

  // Government budget constraint
  G + r(-1) * B(-1) = tau_k * Rk * K + tau_n * w * N + B - B(-1);
    
end;


initval;
  C = 0.8;
  I = 0.2;
  K = 10.0;
  N = 1.0;
  Y = 1.25;
  w = 0.75;
  Rk = 0.3;
  tau_k = tau_k_bar;
  tau_n = tau_n_bar;
  G = G_bar;
  B = 0.5;  // Initial debt
  r = 0.05;
  e_tau_k = 0;
  e_tau_n = 0;
  lambda = 0;
end;

resid;
steady;

shocks;
  var e_tau_k = 0.01;
  var e_tau_n = 0.01;
end;

stoch_simul(order=1);
