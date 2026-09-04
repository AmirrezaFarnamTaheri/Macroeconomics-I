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
M_.fname = 'Copy_of_Farnam_RBC_5';
M_.dynare_version = '6.0';
oo_.dynare_version = '6.0';
options_.dynare_version = '6.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eG'};
M_.exo_names_tex(1) = {'eG'};
M_.exo_names_long(1) = {'eG'};
M_.exo_names(2) = {'eA'};
M_.exo_names_tex(2) = {'eA'};
M_.exo_names_long(2) = {'eA'};
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
M_.endo_names(7) = {'Rk'};
M_.endo_names_tex(7) = {'Rk'};
M_.endo_names_long(7) = {'Rk'};
M_.endo_names(8) = {'w'};
M_.endo_names_tex(8) = {'w'};
M_.endo_names_long(8) = {'w'};
M_.endo_names(9) = {'A'};
M_.endo_names_tex(9) = {'A'};
M_.endo_names_long(9) = {'A'};
M_.endo_names(10) = {'lambda'};
M_.endo_names_tex(10) = {'lambda'};
M_.endo_names_long(10) = {'lambda'};
M_.endo_partitions = struct();
M_.param_names = cell(8,1);
M_.param_names_tex = cell(8,1);
M_.param_names_long = cell(8,1);
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
M_.param_names(6) = {'Omega'};
M_.param_names_tex(6) = {'Omega'};
M_.param_names_long(6) = {'Omega'};
M_.param_names(7) = {'rhoA'};
M_.param_names_tex(7) = {'rhoA'};
M_.param_names_long(7) = {'rhoA'};
M_.param_names(8) = {'rhoG'};
M_.param_names_tex(8) = {'rhoG'};
M_.param_names_long(8) = {'rhoG'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 10;
M_.param_nbr = 8;
M_.orig_endo_nbr = 10;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
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
 0 4 0;
 0 5 0;
 0 6 0;
 0 7 0;
 1 8 0;
 2 9 0;
 0 10 14;
 0 11 0;
 3 12 0;
 0 13 15;]';
M_.nstatic = 5;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [3; 0; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'lambda' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'w' ;
  5 , 'name' , 'Rk' ;
  6 , 'name' , 'Y' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'K' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
};
M_.mapping.C.eqidx = [1 7 ];
M_.mapping.N.eqidx = [2 4 6 ];
M_.mapping.Y.eqidx = [4 5 6 7 ];
M_.mapping.I.eqidx = [7 8 ];
M_.mapping.K.eqidx = [5 6 8 ];
M_.mapping.G.eqidx = [7 10 ];
M_.mapping.Rk.eqidx = [3 5 ];
M_.mapping.w.eqidx = [2 4 ];
M_.mapping.A.eqidx = [6 9 ];
M_.mapping.lambda.eqidx = [1 2 3 ];
M_.mapping.eG.eqidx = [10 ];
M_.mapping.eA.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 9];
M_.block_structure.block(1).variable = [ 9];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 10];
M_.block_structure.block(2).variable = [ 6];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 8;
M_.block_structure.block(3).endo_nbr = 8;
M_.block_structure.block(3).mfs = 7;
M_.block_structure.block(3).equation = [ 4 6 7 1 2 8 3 5];
M_.block_structure.block(3).variable = [ 8 3 4 1 2 5 10 7];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 21;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [5 0 8 9 10 11 12 13 14 20 21 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 5 7 1 2 4 7 2 5 2 3 1 4 5 3 4 6 7 6 6 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([5 5 5 8 8 8 8 9 9 10 10 11 11 12 13 13 13 14 20 21 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 1 1 1 1 4 4 4 8 10 12 14 15 18 19 19 19 19 19 19 20 21 ]);
M_.block_structure.variable_reordered = [ 9 6 8 3 4 1 2 5 10 7];
M_.block_structure.equation_reordered = [ 9 10 4 6 7 1 2 8 3 5];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 5 5;
 6 5;
 8 5;
 9 9;
 10 6;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 10;
 2 2;
 2 8;
 2 10;
 3 10;
 4 2;
 4 3;
 4 8;
 5 3;
 5 7;
 6 2;
 6 3;
 6 9;
 7 1;
 7 3;
 7 4;
 7 6;
 8 4;
 8 5;
 9 9;
 10 6;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 3 7;
 3 10;
];
M_.block_structure.dyn_tmp_nbr = 2;
M_.state_var = [9 6 5 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(10, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(8, 1);
M_.endo_trends = struct('deflator', cell(10, 1), 'log_deflator', cell(10, 1), 'growth_factor', cell(10, 1), 'log_growth_factor', cell(10, 1));
M_.NNZDerivatives = [31; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([5 6 8 10 9 1 7 2 4 6 4 5 6 7 7 8 8 7 10 5 2 4 6 9 1 2 3 3 3 10 9 ]);
M_.dynamic_g1_sparse_colval = int32([5 5 5 6 9 11 11 12 12 12 13 13 13 13 14 14 15 16 16 17 18 18 19 19 20 20 20 27 30 31 32 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 4 5 5 5 6 6 8 11 15 17 18 20 21 23 25 28 28 28 28 28 28 28 29 29 29 30 31 32 ]);
M_.lhs = {
'lambda'; 
'theta*N^chi'; 
'lambda'; 
'w'; 
'Rk'; 
'Y'; 
'Y'; 
'K'; 
'log(A)'; 
'log(G)'; 
};
M_.static_tmp_nbr = [3; 0; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 9];
M_.block_structure_stat.block(1).variable = [ 9];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 10];
M_.block_structure_stat.block(2).variable = [ 6];
M_.block_structure_stat.block(3).Simulation_Type = 6;
M_.block_structure_stat.block(3).endo_nbr = 8;
M_.block_structure_stat.block(3).mfs = 8;
M_.block_structure_stat.block(3).equation = [ 3 4 5 6 7 8 1 2];
M_.block_structure_stat.block(3).variable = [ 7 8 3 2 4 5 1 10];
M_.block_structure_stat.variable_reordered = [ 9 6 7 8 3 2 4 5 1 10];
M_.block_structure_stat.equation_reordered = [ 9 10 3 4 5 6 7 8 1 2];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 10;
 2 2;
 2 8;
 2 10;
 3 7;
 3 10;
 4 2;
 4 3;
 4 8;
 5 3;
 5 5;
 5 7;
 6 2;
 6 3;
 6 5;
 6 9;
 7 1;
 7 3;
 7 4;
 7 6;
 8 4;
 8 5;
 9 9;
 10 6;
];
M_.block_structure_stat.tmp_nbr = 4;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 3 2 8 2 3 4 5 2 4 8 5 6 3 4 6 5 7 1 7 8 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 1 2 2 3 3 3 3 4 4 4 5 5 6 6 6 7 7 8 8 8 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 3 5 9 12 14 17 19 22 ]);
M_.static_g1_sparse_rowval = int32([1 7 2 4 6 4 5 6 7 7 8 5 6 8 7 10 3 5 2 4 6 9 1 2 3 ]);
M_.static_g1_sparse_colval = int32([1 1 2 2 2 3 3 3 3 4 4 5 5 5 6 6 7 7 8 8 9 9 10 10 10 ]);
M_.static_g1_sparse_colptr = int32([1 3 6 10 12 15 17 19 21 23 26 ]);
M_.params(1) = 0.3333333333333333;
alpha = M_.params(1);
M_.params(2) = 0.99;
beta = M_.params(2);
M_.params(3) = 1;
chi = M_.params(3);
M_.params(4) = 0.025;
delta = M_.params(4);
M_.params(5) = 4;
theta = M_.params(5);
M_.params(6) = 0.2;
Omega = M_.params(6);
M_.params(7) = 0.95;
rhoA = M_.params(7);
M_.params(8) = 0.95;
rhoG = M_.params(8);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(9) = 1;
oo_.steady_state(5) = 13.971;
oo_.steady_state(2) = 0.477;
oo_.steady_state(3) = 1.471;
oo_.steady_state(1) = 1.121;
oo_.steady_state(4) = 0.349;
oo_.steady_state(8) = 2.054;
oo_.steady_state(7) = 0.035;
oo_.steady_state(10) = 1/oo_.steady_state(1);
oo_.steady_state(6) = M_.params(6)*oo_.steady_state(3);
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
M_.Sigma_e(1, 1) = sigmaG^2;
M_.Sigma_e(2, 2) = 0.0001;
oo_.dr.eigval = check(M_,options_,oo_);
steady;
rhoG_values = [0.7, 0.95, 0.99];
irf_C = [];
irf_N = [];
irf_Y = [];
irf_I = [];
irf_K = [];
irf_G = [];
irf_Rk = [];
irf_w = [];
for i = 1:length(rhoG_values)
set_param_value('rhoG', rhoG_values(i));
options_.hp_filter = 1600;
options_.irf = 20;
options_.nograph = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
irf_C(:,i) = oo_.irfs.C_eG;
irf_N(:,i) = oo_.irfs.N_eG;
irf_Y(:,i) = oo_.irfs.Y_eG;
irf_I(:,i) = oo_.irfs.I_eG;
irf_K(:,i) = oo_.irfs.K_eG;
irf_G(:,i) = oo_.irfs.G_eG;
irf_Rk(:,i) = oo_.irfs.Rk_eG;
irf_w(:,i) = oo_.irfs.w_eG;
end
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


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Copy_of_Farnam_RBC_5_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
