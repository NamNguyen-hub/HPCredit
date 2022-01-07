clear, clc
working_dir = '/Users/namnguyen/Documents/GitHub/HPCredit/Regression/Bayesian_UC_AR2'
cd(working_dir)
addpath('sims_Optimization');
addpath('functions');


%*********** Data input
country='US';
input_filepath = ['../../Data Collection/1.Latest/Paper2/MergedData_Matlab_' country '.txt'];
data_im = dlmread(input_filepath,',',1,1);
y = data_im(:,1);
T=size(y,1);
x=[ones(T,1) ones(T,1)];

%************ Data generation
N = 250
K = 3

covariates = normrnd(0,1, [N,K])

%** Create the model matrix with intercept
X=[ones(K,1) covariates];


% create a normally distributed variable that is a function of the covariates
coefs = [5, .2, -1.5, .9];
sigma = 2;
mu = X * coefs;
y  = normrnd(mu, sigma, [N,1]);


subplot(3,3,1);
plot(out1(:,1));
title('F_{1}');
subplot(3,3,2);
plot(out1(:,2));
title('F_{2}');
subplot(3,3,3);
plot(out1(:,3));
title('Q_{1}');
subplot(3,3,4);
plot(out1(:,4));
title('Q_{2}');
legend('MH draws');
