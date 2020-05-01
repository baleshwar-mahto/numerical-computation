% Assignment 5 : Problem 1:Using MATLAB command fsolve (multi-variable)
function fval = assig5prob1(X)

x = X(1);
y = X(2);

% Define f(x)
fval(1,1) = 5-x-2*x*exp(-0.2*y);
fval(2,1) = 4-1/y-0.05*x*exp(-0.2*y);
end