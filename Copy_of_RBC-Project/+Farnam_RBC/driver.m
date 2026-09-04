%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'Farnam_RBC';
M_.dynare_version = '6.0';
oo_.dynare_version = '6.0';
options_.dynare_version = '6.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'eps_tau_n'};
M_.exo_names_tex(1) = {'eps\_tau\_n'};
M_.exo_names_long(1) = {'eps_tau_n'};
M_.exo_names(2) = {'eps_tau_k'};
M_.exo_names_tex(2) = {'eps\_tau\_k'};
M_.exo_names_long(2) = {'eps_tau_k'};
M_.exo_names(3) = {'eps_g'};
M_.exo_names_tex(3) = {'eps\_g'};
M_.exo_names_long(3) = {'eps_g'};
M_.endo_names = cell(10,1);
M_.endo_names_tex = cell(10,1);
M_.endo_names_long = cell(10,1);
M_.endo_names(1) = {'C'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'C'};
M_.endo_names(2) = {'N'};
M_.endo_names_tex(2) = {'N'};
M_.endo_names_long(2) = {'N'};
M_.endo_names(3) = {'Y'};
M_.endo_names_tex(3) = {'Y'};
M_.endo_names_long(3) = {'Y'};
M_.endo_names(4) = {'I'};
M_.endo_names_tex(4) = {'I'};
M_.endo_names_long(4) = {'I'};
M_.endo_names(5) = {'K'};
M_.endo_names_tex(5) = {'K'};
M_.endo_names_long(5) = {'K'};
M_.endo_names(6) = {'G'};
M_.endo_names_tex(6) = {'G'};
M_.endo_names_long(6) = {'G'};
M_.endo_names(7) = {'w'};
M_.endo_names_tex(7) = {'w'};
M_.endo_names_long(7) = {'w'};
M_.endo_names(8) = {'r'};
M_.endo_names_tex(8) = {'r'};
M_.endo_names_long(8) = {'r'};
M_.endo_names(9) = {'tau_n'};
M_.endo_names_tex(9) = {'tau\_n'};
M_.endo_names_long(9) = {'tau_n'};
M_.endo_names(10) = {'tau_k'};
M_.endo_names_tex(10) = {'tau\_k'};
M_.endo_names_long(10) = {'tau_k'};
M_.endo_partitions = struct();
M_.param_names = cell(10,1);
M_.param_names_tex = cell(10,1);
M_.param_names_long = cell(10,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'alpha'};
M_.param_names_long(1) = {'alpha'};
M_.param_names(2) = {'beta'};
M_.param_names_tex(2) = {'beta'};
M_.param_names_long(2) = {'beta'};
M_.param_names(3) = {'chi'};
M_.param_names_tex(3) = {'chi'};
M_.param_names_long(3) = {'chi'};
M_.param_names(4) = {'delta'};
M_.param_names_tex(4) = {'delta'};
M_.param_names_long(4) = {'delta'};
M_.param_names(5) = {'theta'};
M_.param_names_tex(5) = {'theta'};
M_.param_names_long(5) = {'theta'};
M_.param_names(6) = {'eta'};
M_.param_names_tex(6) = {'eta'};
M_.param_names_long(6) = {'eta'};
M_.param_names(7) = {'rho_G'};
M_.param_names_tex(7) = {'rho\_G'};
M_.param_names_long(7) = {'rho_G'};
M_.param_names(8) = {'rho_tau_n'};
M_.param_names_tex(8) = {'rho\_tau\_n'};
M_.param_names_long(8) = {'rho_tau_n'};
M_.param_names(9) = {'rho_tau_k'};
M_.param_names_tex(9) = {'rho\_tau\_k'};
M_.param_names_long(9) = {'rho_tau_k'};
M_.param_names(10) = {'A'};
M_.param_names_tex(10) = {'A'};
M_.param_names_long(10) = {'A'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 10;
M_.param_nbr = 10;
M_.orig_endo_nbr = 10;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 10;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 5 15;
 0 6 0;
 0 7 0;
 0 8 0;
 1 9 0;
 2 10 0;
 0 11 0;
 0 12 0;
 3 13 0;
 4 14 0;]';
M_.nstatic = 5;
M_.nfwrd   = 1;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 4;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [5; 1; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , 'w' ;
  4 , 'name' , 'r' ;
  5 , 'name' , 'Y' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'K' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
};
M_.mapping.C.eqidx = [1 2 6 ];
M_.mapping.N.eqidx = [1 3 5 ];
M_.mapping.Y.eqidx = [3 4 5 6 ];
M_.mapping.I.eqidx = [6 7 ];
M_.mapping.K.eqidx = [4 5 7 ];
M_.mapping.G.eqidx = [6 8 ];
M_.mapping.w.eqidx = [1 3 ];
M_.mapping.r.eqidx = [2 4 ];
M_.mapping.tau_n.eqidx = [1 9 ];
M_.mapping.tau_k.eqidx = [2 10 ];
M_.mapping.eps_tau_n.eqidx = [9 ];
M_.mapping.eps_tau_k.eqidx = [10 ];
M_.mapping.eps_g.eqidx = [8 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 8];
M_.block_structure.block(1).variable = [ 6];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 9];
M_.block_structure.block(2).variable = [ 9];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 10];
M_.block_structure.block(3).variable = [ 10];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(4).Simulation_Type = 8;
M_.block_structure.block(4).endo_nbr = 7;
M_.block_structure.block(4).mfs = 4;
M_.block_structure.block(4).equation = [ 5 3 4 6 1 7 2];
M_.block_structure.block(4).variable = [ 3 7 8 4 2 5 1];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 17;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [3 0 0 0 5 6 7 8 12 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([3 1 3 1 2 4 1 2 3 4 1 2 4 4 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([3 5 5 6 6 6 7 7 7 7 8 8 8 12 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 1 1 2 2 4 7 11 14 14 14 14 15 ]);
M_.block_structure.variable_reordered = [ 6 9 10 3 7 8 4 2 5 1];
M_.block_structure.equation_reordered = [ 8 9 10 5 3 4 6 1 7 2];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 7 5;
 8 6;
 9 9;
 10 10;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 2;
 1 7;
 1 9;
 2 1;
 2 8;
 2 10;
 3 2;
 3 3;
 3 7;
 4 3;
 4 5;
 4 8;
 5 2;
 5 3;
 5 5;
 6 1;
 6 3;
 6 4;
 6 6;
 7 4;
 7 5;
 8 6;
 9 9;
 10 10;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 1;
];
M_.block_structure.dyn_tmp_nbr = 8;
M_.state_var = [6 9 10 5 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(10, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(10, 1);
M_.endo_trends = struct('deflator', cell(10, 1), 'log_deflator', cell(10, 1), 'growth_factor', cell(10, 1), 'log_growth_factor', cell(10, 1));
M_.NNZDerivatives = [33; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([7 8 9 10 1 2 6 1 3 5 3 4 5 6 6 7 4 5 7 6 8 1 3 2 4 1 9 2 10 2 9 10 8 ]);
M_.dynamic_g1_sparse_colval = int32([5 6 9 10 11 11 11 12 12 12 13 13 13 13 14 14 15 15 15 16 16 17 17 18 18 19 19 20 20 21 31 32 33 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 2 3 3 3 4 5 8 11 15 17 20 22 24 26 28 30 31 31 31 31 31 31 31 31 31 31 32 33 34 ]);
M_.lhs = {
'chi*N^eta/C^theta'; 
'1/C^theta'; 
'w'; 
'r'; 
'Y'; 
'Y'; 
'K'; 
'log(G)'; 
'log(tau_n)'; 
'log(tau_k)'; 
};
M_.static_tmp_nbr = [4; 1; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 8];
M_.block_structure_stat.block(1).variable = [ 6];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 9];
M_.block_structure_stat.block(2).variable = [ 9];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 10];
M_.block_structure_stat.block(3).variable = [ 10];
M_.block_structure_stat.block(4).Simulation_Type = 6;
M_.block_structure_stat.block(4).endo_nbr = 7;
M_.block_structure_stat.block(4).mfs = 7;
M_.block_structure_stat.block(4).equation = [ 4 5 6 7 1 2 3];
M_.block_structure_stat.block(4).variable = [ 8 5 3 4 2 1 7];
M_.block_structure_stat.variable_reordered = [ 6 9 10 8 5 3 4 2 1 7];
M_.block_structure_stat.equation_reordered = [ 8 9 10 4 5 6 7 1 2 3];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 7;
 1 9;
 2 1;
 2 8;
 2 10;
 3 2;
 3 3;
 3 7;
 4 3;
 4 5;
 4 8;
 5 2;
 5 3;
 5 5;
 6 1;
 6 3;
 6 4;
 6 6;
 7 4;
 7 5;
 8 6;
 9 9;
 10 10;
];
M_.block_structure_stat.tmp_nbr = 8;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 6 1 2 4 1 2 3 7 3 4 2 5 7 3 5 6 5 7 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 1 2 2 2 3 3 3 3 4 4 5 5 5 6 6 6 7 7 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 3 6 10 12 15 18 20 ]);
M_.static_g1_sparse_rowval = int32([1 2 6 1 3 5 3 4 5 6 6 7 4 5 7 6 8 1 3 2 4 1 9 2 10 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 3 3 3 3 4 4 5 5 5 6 6 7 7 8 8 9 9 10 10 ]);
M_.static_g1_sparse_colptr = int32([1 4 7 11 13 16 18 20 22 24 26 ]);
matlab
Copy code
M_.params(1) = 0.36;
alpha = M_.params(1);
M_.params(2) = 0.99;
beta = M_.params(2);
M_.params(3) = 1;
chi = M_.params(3);
M_.params(4) = 0.025;
delta = M_.params(4);
M_.params(5) = 2;
theta = M_.params(5);
M_.params(6) = 1.5;
eta = M_.params(6);
M_.params(7) = 0.95;
rho_G = M_.params(7);
M_.params(8) = 0.8;
rho_tau_n = M_.params(8);
M_.params(9) = 0.8;
rho_tau_k = M_.params(9);
M_.params(10) = 1;
A = M_.params(10);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 1;
oo_.steady_state(2) = 1;
oo_.steady_state(3) = 1;
oo_.steady_state(4) = 0.25;
oo_.steady_state(5) = 10;
oo_.steady_state(6) = 0.2;
oo_.steady_state(7) = 0.7;
oo_.steady_state(8) = 0.03;
oo_.steady_state(9) = 0.2;
oo_.steady_state(10) = 0.2;
oo_.exo_steady_state(3) = 0;
oo_.exo_steady_state(1) = 0;
oo_.exo_steady_state(2) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
M_.Sigma_e(3, 3) = (0.01)^2;
options_.irf = 40;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
