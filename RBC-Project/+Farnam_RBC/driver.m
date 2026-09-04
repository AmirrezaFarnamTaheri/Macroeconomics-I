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
M_.endo_names(5) = {'A'};
M_.endo_names_tex(5) = {'A'};
M_.endo_names_long(5) = {'A'};
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
M_.param_names = cell(5,1);
M_.param_names_tex = cell(5,1);
M_.param_names_long = cell(5,1);
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
M_.param_names(5) = {'con'};
M_.param_names_tex(5) = {'con'};
M_.param_names_long(5) = {'con'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 5;
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
 0 4 0;
 1 5 0;
 2 6 0;
 0 7 0;
 3 8 0;
 0 9 12;
 0 10 0;
 0 11 13;]';
M_.nstatic = 3;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [4; 2; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , 'w' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'Rk' ;
  5 , 'name' , 'Y' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'K' ;
  8 , 'name' , 'A' ;
};
M_.mapping.Y.eqidx = [5 6 ];
M_.mapping.I.eqidx = [6 7 ];
M_.mapping.K.eqidx = [3 4 5 7 ];
M_.mapping.N.eqidx = [3 4 5 ];
M_.mapping.A.eqidx = [3 4 5 8 ];
M_.mapping.C.eqidx = [1 2 6 ];
M_.mapping.w.eqidx = [2 3 ];
M_.mapping.Rk.eqidx = [1 4 ];
M_.mapping.eA.eqidx = [8 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 1;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 8];
M_.block_structure.block(1).variable = [ 5];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [1 2 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 7;
M_.block_structure.block(2).mfs = 5;
M_.block_structure.block(2).equation = [ 2 5 3 6 7 4 1];
M_.block_structure.block(2).variable = [ 7 1 4 2 3 8 6];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 18;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [2 3 0 0 6 7 8 9 10 14 15 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([]);
M_.block_structure.block(1).g1_sparse_colval = int32([]);
M_.block_structure.block(1).g1_sparse_colptr = int32([]);
M_.block_structure.block(2).g1_sparse_rowval = int32([3 3 1 2 4 2 1 2 3 4 4 1 2 5 5 5 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([2 3 6 6 6 7 8 8 8 8 9 10 10 10 14 15 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 2 3 3 3 6 7 11 12 15 15 15 15 16 17 ]);
M_.block_structure.variable_reordered = [ 5 7 1 4 2 3 8 6];
M_.block_structure.equation_reordered = [ 8 2 5 3 6 7 4 1];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 7 2;
 7 3;
 8 5;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 6;
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
 7 3;
 8 5;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 1 6;
 1 8;
];
M_.block_structure.dyn_tmp_nbr = 7;
M_.state_var = [5 2 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(5, 1);
M_.endo_trends = struct('deflator', cell(8, 1), 'log_deflator', cell(8, 1), 'growth_factor', cell(8, 1), 'log_growth_factor', cell(8, 1));
M_.NNZDerivatives = [26; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([7 7 8 5 6 6 3 4 5 7 3 4 5 3 4 5 8 1 2 6 2 3 4 1 1 8 ]);
M_.dynamic_g1_sparse_colval = int32([2 3 5 9 9 10 11 11 11 11 12 12 12 13 13 13 13 14 14 14 15 15 16 22 24 25 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 2 3 3 4 4 4 4 6 7 11 14 18 21 23 24 24 24 24 24 24 25 25 26 27 ]);
M_.lhs = {
'1/C'; 
'w'; 
'w'; 
'Rk'; 
'Y'; 
'Y'; 
'K'; 
'A'; 
};
M_.static_tmp_nbr = [4; 2; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 8];
M_.block_structure_stat.block(1).variable = [ 5];
M_.block_structure_stat.block(2).Simulation_Type = 6;
M_.block_structure_stat.block(2).endo_nbr = 7;
M_.block_structure_stat.block(2).mfs = 7;
M_.block_structure_stat.block(2).equation = [ 2 3 4 5 6 7 1];
M_.block_structure_stat.block(2).variable = [ 6 7 3 4 1 2 8];
M_.block_structure_stat.variable_reordered = [ 5 6 7 3 4 1 2 8];
M_.block_structure_stat.equation_reordered = [ 8 2 3 4 5 6 7 1];
M_.block_structure_stat.incidence.sparse_IM = [
 1 6;
 1 8;
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
M_.block_structure_stat.tmp_nbr = 7;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 5 7 1 2 2 3 4 6 2 3 4 4 5 5 6 3 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 1 1 2 2 3 3 3 3 4 4 4 5 5 6 6 7 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 4 6 10 13 15 17 19 ]);
M_.static_g1_sparse_rowval = int32([5 6 6 7 3 4 5 7 3 4 5 3 4 5 8 1 2 6 2 3 1 4 ]);
M_.static_g1_sparse_colval = int32([1 1 2 2 3 3 3 3 4 4 4 5 5 5 5 6 6 6 7 7 8 8 ]);
M_.static_g1_sparse_colptr = int32([1 3 5 9 12 16 19 21 23 ]);
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(3) = 0.36;
alpha = M_.params(3);
M_.params(4) = 0.95;
rhoA = M_.params(4);
M_.params(5) = 3;
con = M_.params(5);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.01;
steady;
options_.hp_filter = 1600;
options_.irf = 120;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
write_latex_definitions;
write_latex_parameter_table;
collect_latex_files;
save_params_and_steady_state('rbc_ss.tex');


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
