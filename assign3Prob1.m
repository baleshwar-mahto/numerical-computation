% Assignment 3: Problem 1
% Numerical differentiation of f(x) = x^2*cos(x) at x = 0.5
%% Problem setup 
x = 0.5;
f_true= 2*x*(cos(x))-x^2*sin(x);
h = 1e-5;
%% Forwad difference formula
f_fwd = (fun4prob1(x+h)-fun4prob1(x))/h;


%% Central difference formula
f_cent = (fun4prob1(x+h)-fun4prob1(x-h))/(2*h);

%% Errors
delta = abs(f_cent-f_fwd)
err = abs(f_true-f_fwd)
