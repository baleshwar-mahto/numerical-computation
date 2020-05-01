% Lec 5.5 :Using MATLAB command fsolve (multi-variable)
function fval = lorenzSystem(X)

x = X(1);
y = X(2);
z = X(3);

% Define f(x)
fval(1,1) = x-y;
fval(1,2) = 2*x-x*z-y;
fval(1,3) = x*y -3*z;
