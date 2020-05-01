% Assignment 6 , Problem 2
function fErr = fun4assign6Prob2(phi,xx,tau)
% Get parameters
m  = phi(1);
n= phi(2);

% Calculate shear stress ,tau = m*x^n

stress  = m*xx.^n;
fErr  = tau-stress;
end