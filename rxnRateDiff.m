% Lec 3.2 : Differentiation in single variable
% To calculate f'(x) for an Arrhenius expression
% r = k*e^(-E/RT)*C^1.25
% Constants

%% Problem setup
k = 1000;
EbyR = 2500;
C = 1.0;
T = 600;

%% Differentiation
r = k*exp(-EbyR/T)* C^1.25;
%dr/dT = r*(EbyR/T^2);
trueVal = r*(EbyR/T^2);  
%h = 1.0e-4;
h = [1e-3 1e-4 1e-5 1e-6 1e-7]*T;

r1 = k*exp(-EbyR./(T+h))*C^1.25;
r2 = k*exp(-EbyR./(T-h))*C^1.25;
% Central difference formula
numVal = (r1-r2)./(2*h);   
err = abs(trueVal-numVal);

