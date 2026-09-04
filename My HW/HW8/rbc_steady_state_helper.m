function N = rbc_steady_state_helper(N0, zeta, theta, CN, w)

  % This function solves for the steady-state labor supply (N) in the RBC model.

  % Inputs:
  %   N0: Initial guess for the steady-state labor supply.
  %   zeta: Elasticity parameter for the utility function.
  %   theta: Leisure preference parameter.
  %   CN: Steady-state consumption-to-labor ratio.
  %   w: Steady-state wage.

  % Outputs:
  %   N: Steady-state labor supply.

  % Set up optimization options for fsolve with detailed explanations:
  options = optimset(...
      'Display', 'Final', ...  % Only display final iteration information
      'TolX', 1e-10, ...       % Tolerance for change in solution (X)
      'TolFun', 1e-10);        % Tolerance for function value (fun)

  % Define the function to be solved.
  function_to_solve = @(N) N * (1-N)^(-zeta) - w / (CN*theta);

  % Use fsolve to find the root of the function, which is the steady-state labor supply.
  N = fsolve(function_to_solve, N0, options);

end