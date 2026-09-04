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
M_.fname = 'Farnam_RBC_SSmodel';
M_.dynare_version = '6.0';
oo_.dynare_version = '6.0';
options_.dynare_version = '6.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'eA'};
M_.exo_names_tex(1) = {'eA'};
M_.exo_names_long(1) = {'eA'};
M_.endo_names = cell(8,1);
M_.endo_names_tex = cell(8,1);
M_.endo_names_long = cell(8,1);
M_.endo_names(1) = {'Y'};
M_.endo_names_tex(1) = {'Y'};
M_.endo_names_long(1) = {'Y'};
M_.endo_names(2) = {'I'};
M_.endo_names_tex(2) = {'I'};
M_.endo_names_long(2) = {'I'};
M_.endo_names(3) = {'K'};
M_.endo_names_tex(3) = {'K'};
M_.endo_names_long(3) = {'K'};
M_.endo_names(4) = {'N'};
M_.endo_names_tex(4) = {'N'};
M_.endo_names_long(4) = {'N'};
M_.endo_names(5) = {'z'};
M_.endo_names_tex(5) = {'z'};
M_.endo_names_long(5) = {'z'};
M_.endo_names(6) = {'C'};
M_.endo_names_tex(6) = {'C'};
M_.endo_names_long(6) = {'C'};
M_.endo_names(7) = {'w'};
M_.endo_names_tex(7) = {'w'};
M_.endo_names_long(7) = {'w'};
M_.endo_names(8) = {'Rk'};
M_.endo_names_tex(8) = {'Rk'};
M_.endo_names_long(8) = {'Rk'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'delta'};
M_.param_names_long(2) = {'delta'};
M_.param_names(3) = {'alpha'};
M_.param_names_tex(3) = {'alpha'};
M_.param_names_long(3) = {'alpha'};
M_.param_names(4) = {'rhoA'};
M_.param_names_tex(4) = {'rhoA'};
M_.param_names_long(4) = {'rhoA'};
M_.param_names(5) = {'sigma'};
M_.param_names_tex(5) = {'sigma'};
M_.param_names_long(5) = {'sigma'};
M_.param_names(6) = {'zeta'};
M_.param_names_tex(6) = {'zeta'};
M_.param_names_long(6) = {'zeta'};
M_.param_names(7) = {'theta'};
M_.param_names_tex(7) = {'theta'};
M_.param_names_long(7) = {'theta'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 7;
M_.orig_endo_nbr = 8;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
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
M_.eq_nbr = 8;
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
 0 3 0;
 0 4 0;
 1 5 0;
 0 6 11;
 2 7 0;
 0 8 12;
 0 9 0;
 0 10 13;]';
M_.nstatic = 3;
M_.nfwrd   = 3;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 2;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [9; 5; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , 'w' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'Rk' ;
  5 , 'name' , 'Y' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'K' ;
  8 , 'name' , '8' ;
};
M_.mapping.Y.eqidx = [5 6 ];
M_.mapping.I.eqidx = [6 7 ];
M_.mapping.K.eqidx = [3 4 5 7 ];
M_.mapping.N.eqidx = [1 2 3 4 5 ];
M_.mapping.z.eqidx = [3 4 5 8 ];
M_.mapping.C.eqidx = [1 2 6 ];
M_.mapping.w.eqidx = [2 3 ];
M_.mapping.Rk.eqidx = [1 4 ];
M_.mapping.eA.eqidx = [8 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 8];
M_.block_structure.block(1).variable = [ 5];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 7;
M_.block_structure.block(2).mfs = 7;
M_.block_structure.block(2).equation = [ 3 5 6 7 2 4 1];
M_.block_structure.block(2).variable = [ 7 1 2 3 4 8 6];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 23;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [4 8 9 10 11 12 13 14 19 20 21 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 2 4 6 1 5 2 3 3 4 4 1 2 5 6 7 6 3 5 7 7 7 7 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([4 4 4 4 8 8 9 9 10 10 11 12 12 12 12 12 13 14 14 14 19 20 21 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 1 1 5 5 5 5 7 9 11 12 17 18 21 21 21 21 21 22 23 24 ]);
M_.block_structure.variable_reordered = [ 5 7 1 2 3 4 8 6];
M_.block_structure.equation_reordered = [ 8 3 5 6 7 2 4 1];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 3 3;
 4 3;
 5 3;
 7 3;
 8 5;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 4;
 1 6;
 2 4;
 2 6;
 2 7;
 3 4;
 3 5;
 3 7;
 4 4;
 4 5;
 4 8;
 5 1;
 5 4;
 5 5;
 6 1;
 6 2;
 6 6;
 7 2;
 7 3;
 8 5;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 1 4;
 1 6;
 1 8;
];
M_.block_structure.dyn_tmp_nbr = 13;
M_.state_var = [5 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(8, 1), 'log_deflator', cell(8, 1), 'growth_factor', cell(8, 1), 'log_growth_factor', cell(8, 1));
M_.NNZDerivatives = [29; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([3 4 5 7 8 5 6 6 7 7 1 2 3 4 5 3 4 5 8 1 2 6 2 3 4 1 1 1 8 ]);
M_.dynamic_g1_sparse_colval = int32([3 3 3 3 5 9 9 10 10 11 12 12 12 12 12 13 13 13 13 14 14 14 15 15 16 20 22 24 25 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 5 5 6 6 6 6 8 10 11 16 20 23 25 26 26 26 26 27 27 28 28 29 30 ]);
M_.lhs = {
'(C*exp((theta*(1-N)^(-zeta)-1)/(1-zeta)))^(1-sigma)'; 
'w'; 
'w'; 
'Rk'; 
'Y'; 
'Y'; 
'K'; 
'log(z)'; 
};
M_.static_tmp_nbr = [8; 5; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 8];
M_.block_structure_stat.block(1).variable = [ 5];
M_.block_structure_stat.block(2).Simulation_Type = 6;
M_.block_structure_stat.block(2).endo_nbr = 7;
M_.block_structure_stat.block(2).mfs = 7;
M_.block_structure_stat.block(2).equation = [ 2 3 4 5 6 7 1];
M_.block_structure_stat.block(2).variable = [ 7 4 8 3 1 2 6];
M_.block_structure_stat.variable_reordered = [ 5 7 4 8 3 1 2 6];
M_.block_structure_stat.equation_reordered = [ 8 2 3 4 5 6 7 1];
M_.block_structure_stat.incidence.sparse_IM = [
 1 4;
 1 6;
 1 8;
 2 4;
 2 6;
 2 7;
 3 3;
 3 4;
 3 5;
 3 7;
 4 3;
 4 4;
 4 5;
 4 8;
 5 1;
 5 3;
 5 4;
 5 5;
 6 1;
 6 2;
 6 6;
 7 2;
 7 3;
 8 5;
];
M_.block_structure_stat.tmp_nbr = 13;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 2 1 2 3 4 7 3 7 2 3 4 6 4 5 5 6 1 5 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 1 2 2 2 2 2 3 3 4 4 4 4 5 5 6 6 7 7 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 3 8 10 14 16 18 21 ]);
M_.static_g1_sparse_rowval = int32([5 6 6 7 3 4 5 7 1 2 3 4 5 3 4 5 8 1 2 6 2 3 1 4 ]);
M_.static_g1_sparse_colval = int32([1 1 2 2 3 3 3 3 4 4 4 4 4 5 5 5 5 6 6 6 7 7 8 8 ]);
M_.static_g1_sparse_colptr = int32([1 3 5 9 14 18 21 23 25 ]);
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(3) = 0.3333333333333333;
alpha = M_.params(3);
M_.params(4) = 0.95;
rhoA = M_.params(4);
M_.params(5) = 2;
sigma = M_.params(5);
M_.params(6) = 2;
zeta = M_.params(6);
M_.params(7) = 0.5;
theta = M_.params(7);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.01;
oo_.dr.eigval = check(M_,options_,oo_);
steady;
options_.hp_filter = 1600;
options_.irf = 120;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
write_latex_definitions; 
write_latex_parameter_table; 
save_params_and_steady_state('rbc_ss.tex');
collect_latex_files; 


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_SSmodel_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
