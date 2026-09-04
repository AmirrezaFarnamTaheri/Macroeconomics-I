var C N Y I K G Rk w A lambda; % Declare endogenous variables
varexo eG eA; % Declare exogenous variables for government spending and technology shocks

parameters alpha beta chi delta theta Omega rhoA rhoG sigmaG; % Declare parameters

% Assign parameter values
alpha = 1/3; % Capital share in production
beta = 0.99; % Discount factor
chi = 1; % Labor supply elasticity
delta = 0.025; % Depreciation rate
theta = 4; % Leisure preference parameter
Omega = 0.2; % Government spending to GDP ratio
sigmaG = 0.01; % Standard deviation of government spending shock
rhoA = 0.95; % Autoregressive coefficient for technology shock
rhoG = 0.95; % Autoregressive coefficient for government spending

% Model block
model;
  % Household's first order conditions
  lambda = 1 / C;
  theta * N^chi = lambda * w;
  lambda = beta * lambda(+1) * (1 + Rk(+1) - delta);

  % Firm's first order conditions
  w = (1 - alpha) * Y / N;
  Rk = alpha * Y / K(-1);

  % Production function
  Y = A * K(-1)^alpha * N^(1 - alpha);

  % Resource constraint
  Y = C + I + G;

  % Capital accumulation equation
  K = I + (1 - delta) * K(-1);

  % Technology shock process
  log(A) = rhoA * log(A(-1)) + eA;
  
  % Government spending process
  log(G) = rhoG * log(G(-1)) + eG;
end;

% Initial conditions
initval;
 A = 1;
 K = 13.971;
 N = 0.477;
 Y = 1.471;
 C = 1.121;
 I = 0.349;
 w = 2.054;
 Rk = 0.035;
 lambda = 1 / C;
 G = Omega * Y; 
end;

% Shocks block
shocks;
    var eG = sigmaG^2;
    var eA = 0.01^2;
end;

% Check the model
check;

% Compute the steady state
steady;

% Values for rhoG
rhoG_values = [0.7, 0.95, 0.99];

% Run simulations for different rhoG values
irf_C = [];
irf_N = [];
irf_Y = [];
irf_I = [];
irf_K = [];
irf_G = [];
irf_Rk = [];
irf_w = [];
multiplier = [];

for i = 1:length(rhoG_values)
    set_param_value('rhoG', rhoG_values(i));
    stoch_simul(order=1, irf=40, hp_filter=1600, nograph);
    
    % Store the results
    irf_C(:,i) = oo_.irfs.C_eG;
    irf_N(:,i) = oo_.irfs.N_eG;
    irf_Y(:,i) = oo_.irfs.Y_eG;
    irf_I(:,i) = oo_.irfs.I_eG;
    irf_K(:,i) = oo_.irfs.K_eG;
    irf_G(:,i) = oo_.irfs.G_eG;
    irf_Rk(:,i) = oo_.irfs.Rk_eG;
    irf_w(:,i) = oo_.irfs.w_eG;
    
    % Compute the government spending multiplier
    multiplier(:,i) = irf_Y(:,i) ./ irf_G(:,i);
end

% Plot IRFs on the same plot
titles = {'C', 'N', 'Y', 'I', 'K', 'G', 'Rk', 'w'};
irf_data = {irf_C, irf_N, irf_Y, irf_I, irf_K, irf_G, irf_Rk, irf_w};

figure;
for i = 1:8
    subplot(3, 3, i);
    hold on;
    plot(irf_data{i}(:,1), 'b');
    plot(irf_data{i}(:,2), 'r');
    plot(irf_data{i}(:,3), 'g');
    hold off;
    title(titles{i});
    legend('rhoG = 0.7', 'rhoG = 0.95', 'rhoG = 0.99');
end

% Plot the government spending multiplier
figure;
hold on;
plot(multiplier(:,1), 'b');
plot(multiplier(:,2), 'r');
plot(multiplier(:,3), 'g');
hold off;
title('Government Spending Multiplier');
legend('rhoG = 0.7', 'rhoG = 0.95', 'rhoG = 0.99');
xlabel('Periods');
ylabel('Multiplier');
