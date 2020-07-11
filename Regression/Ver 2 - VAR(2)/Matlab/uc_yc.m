%out Replicates Table 3 from Morley, 2007 JMCB
%Load Data
clear, clc
cd('D:\GitHub\HPCredit\Regression\Ver 2 - UC with random walk drift term\Matlab')

country='US'
input_filepath = ['..\Data\Input\data_' country '.txt']

data_im = dlmread(input_filepath,',',1,1);
%data = [data_im(9:214,1),data_im(9:214,2)]; Original code drop first 8
%rows

%Log Transformation
y = 100*log(data_im);

T = size(y,1); %Row dimension of y

START = 2; %Start up values for the VEVD of likelihood

%Setting prior for y and h
t_y_prior = y(1,1);
t_h_prior = y(1,2);

%=========================================================================%
% Maximum Likelihood Estimation
%=========================================================================%

%Initial values for  optimisation routine
% prmtr_in = [-3.08,-24.92,-0.011,0.24649, ...
%              -0.2259,0.53124,1.98897,-3.2913, ...
%              0.0028,0.0005, ...
%              -1.236,0.8003,8.4251,4.6742, ...
%              -1.052,0.84236]';

prmtr_in = -1 + 2*rand(14,1)         
%trans(prmtr_in)        
        
%Initial paramter values
options=optimoptions('fminunc','MaxfunctionEvaluations',10000,'FiniteDifferenceType','central');

[xout,fout,cout,output,gout,hout] = ...
    fminunc(@(prmtr)lik_fcn(prmtr,y,T,START,t_y_prior,t_h_prior),prmtr_in,options);
%Returns paramter estimates, -LL value, code

%Final parameter values
prm_fnl = trans(xout);

%Use Hessian to find parameter standard errors
hessn0 = hout;
cov0 = inv(hout);

par = sym('p',[14 1]);
grdn_fnl = jacobian(trans(par),par); 
grdn_fnl = eval(subs(grdn_fnl,par,xout));
cov = grdn_fnl*cov0*grdn_fnl';
sd_fnl = sqrt(abs(diag(cov))); %Standard errors of the estimated coefficients
sd_out = sqrt(abs(diag(cov0)));

%Creates output file to store results
results_filename = ['..\Output\results_' country '.txt']
results = fopen(results_filename,'w');

fprintf(results, "Starting values:\n");
fprintf(results,"%f \n",prmtr_in);

%Final Output
fprintf(results,"\n Likelihood value is %f \n",-fout);
fprintf(results,"code %f \n",cout);
fprintf(results,"\n Estimated parameters are:\n");
fprintf(results,"%f\n",[prm_fnl;sd_fnl]);
fprintf(results,"Pre-transformed estimate are:\n");
fprintf(results,"%f\n",xout);
fclose(results);

%Write data to csv file
Reg = table(prm_fnl, sd_fnl)
lik_value = {-fout,0}
Reg = [Reg;lik_value]

%Write file for parameter in
prmtr_in_table = table(prmtr_in)
prmtr_in_filename = ['..\Data\prmtr_in_' country '.txt']
writetable(prmtr_in_table, prmtr_in_filename,'WriteVariableNames',0)
%type '..\Output\prmtr_in_US.txt'
%Write file to a specific folder
my_directory = '..\Output';  
writedata = [my_directory filesep 'Reg_' country '.csv'];
writetable(Reg,writedata,'Delimiter',',','WriteVariableNames',0)

%=========================================================================%
% Impulse Response Functions
%=========================================================================%

[data,forcst] = filter_fcn(xout,y,T,START,t_y_prior,t_h_prior);

%Creates output file to store filtered dataset
csvwrite(['..\Data\uc_yc_' country '.txt'],[data(:,1),data(:,3),data(:,5),data(:,7),forcst(:,1:2)]);