close all;clear ;clc
%DIMENSIONLESS POWER COMPUTATION%

syms  g
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
dim_pr = (  p./ (g-1) ) - ( (g.*q) ./ (g-1) ); % To be used for the calculation of  max dim power