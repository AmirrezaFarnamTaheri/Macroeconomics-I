var Consumption Labor Output Investment Capital Wage CapitalInterest Technology RealMoney Inflation NominalInterest RealInterest MoneySupplyChange; % Declare endogenous variables
varexo eA eM; % Declare exogenous variables for technology and money supply shocks

parameters alpha beta delta theta psi zeta rhoA rhoM pi_star N_star; % Declare parameters

% Assign parameter values
alpha = 1/3; % Capital share in production
beta = 0.99; % Discount factor
delta = 0.025; % Derpeciation rate
theta = 0.5; % Leisure preference parameter
psi = 1; % Money utility parameter
zeta = 2; % Money utility curvature
rhoA = 0.95; % Autoregressive coefficient for technology shock
rhoM = 0.5; % Autoregressive coefficient for money supply shock
pi_star = 0; % Steady-state inflation rate
N_star = 1/2; % Steady-state labor supply


% Model block
model;
  % Household's first order conditions
  theta / (1 - Labor) = 1 / Consumption * Wage;
  1 / Consumption = beta * (1 / Consumption(+1)) * (CapitalInterest(+1) + (1 - delta));
  1 / Consumption = beta * (1 / Consumption(+1)) * (1 + RealInterest);
  
  % Firm's first order conditions
  CapitalInterest = alpha * Technology * Capital(-1)^(alpha - 1) * Labor^(1 - alpha);
  Wage = (1 - alpha) * Technology * Capital(-1)^alpha * Labor^(-alpha);
  
  % Production function
  Output = Technology * Capital(-1)^alpha * Labor^(1 - alpha);
  
  % Capital accumulation equation
  Capital = Investment + (1 - delta) * Capital(-1);
  
  % Resource constraint
  Output = Consumption + Investment;
  
  % Money utility function and Fisher equation
  RealMoney = (psi * Consumption * (1 + NominalInterest) / NominalInterest) ^ zeta;
  1 + RealInterest = (1 + NominalInterest) * (1 + Inflation(+1))^(-1);
  
  % Technology shock process
  log(Technology) = rhoA * log(Technology(-1)) + eA;
  
  % Money growth rate process
  MoneySupplyChange = (1 - rhoM) * pi_star - Inflation + rhoM * Inflation(-1) + rhoM * MoneySupplyChange(-1) + eM;
  log(RealMoney) = log(RealMoney(-1)) + MoneySupplyChange;
  
end;

% Initial conditions
initval;
  Technology = 1;
  Capital = 13.971;
  Labor = N_star;
  Output = 1.471;
  Consumption = 1.121;
  Investment = 0.349;
  Wage = 2.054;
  CapitalInterest = 0.035;
  RealMoney = 1;
  Inflation = pi_star;
  NominalInterest = 0.035;
  RealInterest = 0.035;
  MoneySupplyChange =0.05;
end;

% Shocks block
shocks;
    var eM = 0.01^2;
end;

% Check the model
check;

% Compute the steady state
steady;


stoch_simul(order=1, irf=120);
 