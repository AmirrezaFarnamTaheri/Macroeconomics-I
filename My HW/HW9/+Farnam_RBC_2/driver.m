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
M_.fname = 'Farnam_RBC_2';
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
M_.exo_names(1) = {'eA'};
M_.exo_names_tex(1) = {'eA'};
M_.exo_names_long(1) = {'eA'};
M_.exo_names(2) = {'eM'};
M_.exo_names_tex(2) = {'eM'};
M_.exo_names_long(2) = {'eM'};
M_.endo_names = cell(13,1);
M_.endo_names_tex = cell(13,1);
M_.endo_names_long = cell(13,1);
M_.endo_names(1) = {'Consumption'};
M_.endo_names_tex(1) = {'Consumption'};
M_.endo_names_long(1) = {'Consumption'};
M_.endo_names(2) = {'Labor'};
M_.endo_names_tex(2) = {'Labor'};
M_.endo_names_long(2) = {'Labor'};
M_.endo_names(3) = {'Output'};
M_.endo_names_tex(3) = {'Output'};
M_.endo_names_long(3) = {'Output'};
M_.endo_names(4) = {'Investment'};
M_.endo_names_tex(4) = {'Investment'};
M_.endo_names_long(4) = {'Investment'};
M_.endo_names(5) = {'Capital'};
M_.endo_names_tex(5) = {'Capital'};
M_.endo_names_long(5) = {'Capital'};
M_.endo_names(6) = {'Wage'};
M_.endo_names_tex(6) = {'Wage'};
M_.endo_names_long(6) = {'Wage'};
M_.endo_names(7) = {'CapitalInterest'};
M_.endo_names_tex(7) = {'CapitalInterest'};
M_.endo_names_long(7) = {'CapitalInterest'};
M_.endo_names(8) = {'Technology'};
M_.endo_names_tex(8) = {'Technology'};
M_.endo_names_long(8) = {'Technology'};
M_.endo_names(9) = {'RealMoney'};
M_.endo_names_tex(9) = {'RealMoney'};
M_.endo_names_long(9) = {'RealMoney'};
M_.endo_names(10) = {'Inflation'};
M_.endo_names_tex(10) = {'Inflation'};
M_.endo_names_long(10) = {'Inflation'};
M_.endo_names(11) = {'NominalInterest'};
M_.endo_names_tex(11) = {'NominalInterest'};
M_.endo_names_long(11) = {'NominalInterest'};
M_.endo_names(12) = {'RealInterest'};
M_.endo_names_tex(12) = {'RealInterest'};
M_.endo_names_long(12) = {'RealInterest'};
M_.endo_names(13) = {'MoneySupplyChange'};
M_.endo_names_tex(13) = {'MoneySupplyChange'};
M_.endo_names_long(13) = {'MoneySupplyChange'};
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
M_.param_names(3) = {'delta'};
M_.param_names_tex(3) = {'delta'};
M_.param_names_long(3) = {'delta'};
M_.param_names(4) = {'theta'};
M_.param_names_tex(4) = {'theta'};
M_.param_names_long(4) = {'theta'};
M_.param_names(5) = {'psi'};
M_.param_names_tex(5) = {'psi'};
M_.param_names_long(5) = {'psi'};
M_.param_names(6) = {'zeta'};
M_.param_names_tex(6) = {'zeta'};
M_.param_names_long(6) = {'zeta'};
M_.param_names(7) = {'rhoA'};
M_.param_names_tex(7) = {'rhoA'};
M_.param_names_long(7) = {'rhoA'};
M_.param_names(8) = {'rhoM'};
M_.param_names_tex(8) = {'rhoM'};
M_.param_names_long(8) = {'rhoM'};
M_.param_names(9) = {'pi_star'};
M_.param_names_tex(9) = {'pi\_star'};
M_.param_names_long(9) = {'pi_star'};
M_.param_names(10) = {'N_star'};
M_.param_names_tex(10) = {'N\_star'};
M_.param_names_long(10) = {'N_star'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 13;
M_.param_nbr = 10;
M_.orig_endo_nbr = 13;
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
M_.eq_nbr = 13;
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
 0 6 19;
 0 7 0;
 0 8 0;
 0 9 0;
 1 10 0;
 0 11 0;
 0 12 20;
 2 13 0;
 3 14 0;
 4 15 21;
 0 16 0;
 0 17 0;
 5 18 0;]';
M_.nstatic = 6;
M_.nfwrd   = 2;
M_.npred   = 4;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 5;
M_.ndynamic   = 7;
M_.dynamic_tmp_nbr = [7; 3; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'CapitalInterest' ;
  5 , 'name' , 'Wage' ;
  6 , 'name' , 'Output' ;
  7 , 'name' , 'Capital' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'RealMoney' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'MoneySupplyChange' ;
  13 , 'name' , '13' ;
};
M_.mapping.Consumption.eqidx = [1 2 3 8 9 ];
M_.mapping.Labor.eqidx = [1 4 5 6 ];
M_.mapping.Output.eqidx = [6 8 ];
M_.mapping.Investment.eqidx = [7 8 ];
M_.mapping.Capital.eqidx = [4 5 6 7 ];
M_.mapping.Wage.eqidx = [1 5 ];
M_.mapping.CapitalInterest.eqidx = [2 4 ];
M_.mapping.Technology.eqidx = [4 5 6 11 ];
M_.mapping.RealMoney.eqidx = [9 13 ];
M_.mapping.Inflation.eqidx = [10 12 ];
M_.mapping.NominalInterest.eqidx = [9 10 ];
M_.mapping.RealInterest.eqidx = [3 10 ];
M_.mapping.MoneySupplyChange.eqidx = [12 13 ];
M_.mapping.eA.eqidx = [11 ];
M_.mapping.eM.eqidx = [12 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 11];
M_.block_structure.block(1).variable = [ 8];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 7;
M_.block_structure.block(2).mfs = 7;
M_.block_structure.block(2).equation = [ 5 6 8 1 7 2 4];
M_.block_structure.block(2).variable = [ 2 3 4 6 5 1 7];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 21;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [5 8 9 10 11 12 13 14 20 21 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 3];
M_.block_structure.block(3).variable = [ 12];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 1;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(4).Simulation_Type = 8;
M_.block_structure.block(4).endo_nbr = 4;
M_.block_structure.block(4).mfs = 4;
M_.block_structure.block(4).equation = [ 10 9 13 12];
M_.block_structure.block(4).variable = [ 11 9 13 10];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 11;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [2 3 4 5 6 7 8 12 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 2 5 7 1 2 4 7 2 3 3 5 1 4 5 3 4 6 7 6 6 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([5 5 5 5 8 8 8 8 9 9 10 10 11 11 12 13 13 13 14 20 21 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 1 1 1 5 5 5 9 11 13 15 16 19 20 20 20 20 20 20 21 22 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([3 4 4 1 2 2 3 3 4 4 1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([2 3 4 5 5 6 6 7 7 8 12 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 1 2 3 4 6 8 10 11 11 11 11 12 ]);
M_.block_structure.variable_reordered = [ 8 2 3 4 6 5 1 7 12 11 9 13 10];
M_.block_structure.equation_reordered = [ 11 5 6 8 1 7 2 4 3 10 9 13 12];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 4 5;
 5 5;
 6 5;
 7 5;
 11 8;
 12 10;
 12 13;
 13 9;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 2;
 1 6;
 2 1;
 3 1;
 3 12;
 4 2;
 4 7;
 4 8;
 5 2;
 5 6;
 5 8;
 6 2;
 6 3;
 6 8;
 7 4;
 7 5;
 8 1;
 8 3;
 8 4;
 9 1;
 9 9;
 9 11;
 10 11;
 10 12;
 11 8;
 12 10;
 12 13;
 13 9;
 13 13;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 1;
 2 7;
 3 1;
 10 10;
];
M_.block_structure.dyn_tmp_nbr = 7;
M_.state_var = [8 5 9 13 10 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(13, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(10, 1);
M_.endo_trends = struct('deflator', cell(13, 1), 'log_deflator', cell(13, 1), 'growth_factor', cell(13, 1), 'log_growth_factor', cell(13, 1));
M_.NNZDerivatives = [44; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([4 5 6 7 11 13 12 12 1 2 3 8 9 1 4 5 6 6 8 7 8 7 1 5 4 4 5 6 11 9 13 12 9 10 3 10 12 13 2 3 2 10 11 12 ]);
M_.dynamic_g1_sparse_colval = int32([5 5 5 5 8 9 10 13 14 14 14 14 14 15 15 15 15 16 16 17 17 18 19 19 20 21 21 21 21 22 22 23 24 24 25 25 26 26 27 27 33 36 40 41 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 5 5 5 6 7 8 8 8 9 14 18 20 22 23 25 26 30 32 33 35 37 39 41 41 41 41 41 41 42 42 42 43 43 43 43 44 45 ]);
M_.lhs = {
'theta/(1-Labor)'; 
'1/Consumption'; 
'1/Consumption'; 
'CapitalInterest'; 
'Wage'; 
'Output'; 
'Capital'; 
'Output'; 
'RealMoney'; 
'1+RealInterest'; 
'log(Technology)'; 
'MoneySupplyChange'; 
'log(RealMoney)'; 
};
M_.static_tmp_nbr = [7; 4; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 11];
M_.block_structure_stat.block(1).variable = [ 8];
M_.block_structure_stat.block(2).Simulation_Type = 6;
M_.block_structure_stat.block(2).endo_nbr = 7;
M_.block_structure_stat.block(2).mfs = 7;
M_.block_structure_stat.block(2).equation = [ 2 4 5 6 7 8 1];
M_.block_structure_stat.block(2).variable = [ 1 7 6 5 4 3 2];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 3];
M_.block_structure_stat.block(3).variable = [ 12];
M_.block_structure_stat.block(4).Simulation_Type = 6;
M_.block_structure_stat.block(4).endo_nbr = 4;
M_.block_structure_stat.block(4).mfs = 4;
M_.block_structure_stat.block(4).equation = [ 9 10 12 13];
M_.block_structure_stat.block(4).variable = [ 9 11 10 13];
M_.block_structure_stat.variable_reordered = [ 8 1 7 6 5 4 3 2 12 9 11 10 13];
M_.block_structure_stat.equation_reordered = [ 11 2 4 5 6 7 8 1 3 9 10 12 13];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 6;
 2 1;
 2 7;
 3 1;
 3 12;
 4 2;
 4 5;
 4 7;
 4 8;
 5 2;
 5 5;
 5 6;
 5 8;
 6 2;
 6 3;
 6 5;
 6 8;
 7 4;
 7 5;
 8 1;
 8 3;
 8 4;
 9 1;
 9 9;
 9 11;
 10 10;
 10 11;
 10 12;
 11 8;
 12 10;
 12 13;
 13 13;
];
M_.block_structure_stat.tmp_nbr = 9;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 6 7 1 2 3 7 2 3 4 5 5 6 4 6 2 3 4 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 1 1 2 2 3 3 4 4 4 4 5 5 6 6 7 7 7 7 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 4 6 8 12 14 16 20 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 1 2 2 3 3 4 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 2 2 3 3 4 4 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 2 4 6 8 ]);
M_.static_g1_sparse_rowval = int32([1 2 3 8 9 1 4 5 6 6 8 7 8 4 5 6 7 1 5 2 4 4 5 6 11 9 10 12 9 10 3 10 12 13 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 1 2 2 2 2 3 3 4 4 5 5 5 5 6 6 7 7 8 8 8 8 9 10 10 11 11 12 12 13 13 ]);
M_.static_g1_sparse_colptr = int32([1 6 10 12 14 18 20 22 26 27 29 31 33 35 ]);
M_.params(1) = 0.3333333333333333;
alpha = M_.params(1);
M_.params(2) = 0.99;
beta = M_.params(2);
M_.params(3) = 0.025;
delta = M_.params(3);
M_.params(4) = 0.5;
theta = M_.params(4);
M_.params(5) = 1;
psi = M_.params(5);
M_.params(6) = 2;
zeta = M_.params(6);
M_.params(7) = 0.95;
rhoA = M_.params(7);
M_.params(8) = 0.5;
rhoM = M_.params(8);
M_.params(9) = 0;
pi_star = M_.params(9);
M_.params(10) = 0.5;
N_star = M_.params(10);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(8) = 1;
oo_.steady_state(5) = 13.971;
oo_.steady_state(2) = M_.params(10);
oo_.steady_state(3) = 1.471;
oo_.steady_state(1) = 1.121;
oo_.steady_state(4) = 0.349;
oo_.steady_state(6) = 2.054;
oo_.steady_state(7) = 0.035;
oo_.steady_state(9) = 1;
oo_.steady_state(10) = M_.params(9);
oo_.steady_state(11) = 0.035;
oo_.steady_state(12) = 0.035;
oo_.steady_state(13) = 0.05;
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
M_.Sigma_e(2, 2) = 0.0001;
oo_.dr.eigval = check(M_,options_,oo_);
steady;
options_.irf = 120;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Farnam_RBC_2_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
