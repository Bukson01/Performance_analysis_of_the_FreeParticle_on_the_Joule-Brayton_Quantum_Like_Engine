close all;clear ;clc
%DIMENSIONLESS POWER COMPUTATION%


r  = -5 : 0.001 : 5;  % ratio of the lengths (L_3/L_1)

%% (Free-Particle = FP)
% constants
a = 3*(4^(1/3)-1);
b = 1/4;
c = 1/4^(1/3);
p = a*b;
q = a*c;

% dimensionless power (P*)
dim_p = (  p./ (r-1) ) - ( (r.*q) ./ (r-1) );  % To be used for plotting the dimensionless power

%% Plotting the graph of the dimensionless power
% FP POWER* VS LENGTH RATIO 2012
 figure;
plot(r, dim_p, 'r-','LineWidth', 1)
grid on;
title(' Dimensionless Power Vs Length Ratio ');
xlabel(' r ','fontweight','bold','fontsize',11);
ylabel(' p* ','fontweight','bold','fontsize',11);

% Computing the maximum dimensionless power (dp_dr)
syms  r
dim_pr = (  p./ (r-1) ) - ( (r.*q) ./ (r-1) ); % To be used for the calculation of  max dim power

% performs the differentiation to get the max dimensionless power
dim_p_max = diff(dim_pr,g);

% solves the resulting differentiation to observe the max values
coeff = solve(dim_p_max==0, g);

% displays the max values
if isempty(coeff)
    fprintf('There is no maximum value.')
else
    fprintf('The maximum values are:')
    for i = 1:length(coeff)
        fprintf('\n%d value: %d',i,coeff(i))
    end
<<<<<<< HEAD
end



 %%
% setting axis
set(get(gca, 'XAxis'), 'FontWeight', 'bold')
set(get(gca, 'YAxis'), 'FontWeight', 'bold')
=======
end
>>>>>>> 33418cba33a24634823f0bf81fa04a7d510357dc
