matlab
Copy code
var C N Y I K G w r tau_n tau_k;
varexo eps_tau_n eps_tau_k eps_g;
parameters alpha beta chi delta theta eta rho_G rho_tau_n rho_tau_k A;

alpha = 0.36;
beta = 0.99;
chi = 1;
delta = 0.025;
theta = 2;
eta = 1.5;
rho_G = 0.95;
rho_tau_n = 0.8;
rho_tau_k = 0.8;
A = 1;

model;
    % Household FOCs
    chi * N^eta / C^theta = (1 - tau_n) * w;
    1 / C^theta = beta * (1 + r * (1 - tau_k)) / C(+1)^theta;
    
    % Firm FOCs
    w = (1 - alpha) * Y / N;
    r = alpha * Y / K;
    
    % Production function
    Y = A * K^alpha * N^(1 - alpha);
    
    % Resource constraint
    Y = C + I + G;
    
    % Capital accumulation
    K = (1 - delta) * K(-1) + I;
    
    % Government spending process
    log(G) = rho_G * log(G(-1)) + eps_g;
    
    % Tax processes
    log(tau_n) = rho_tau_n * log(tau_n(-1)) + eps_tau_n;
    log(tau_k) = rho_tau_k * log(tau_k(-1)) + eps_tau_k;
end;

initval;
    C = 1;
    N = 1;
    Y = 1;
    I = 0.25;
    K = 10;
    G = 0.2;
    w = 0.7;
    r = 0.03;
    tau_n = 0.2;
    tau_k = 0.2;
    eps_g = 0;
    eps_tau_n = 0;
    eps_tau_k = 0;
end;

shocks;
    var eps_g; stderr 0.01;
    var eps_tau_n; stderr 0.01;
    var eps_tau_k; stderr 0.01;
end;

stoch_simul(order = 1, irf = 40);