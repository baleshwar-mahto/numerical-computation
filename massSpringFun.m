% Lec 8.1 : Multi-Variable ODE
function fval = massSpringFun(t,y)
% Function for mass-spring system
% This set of ODEs will be solved using ode45

x = y(1);
v = y(2);

% Define constant
c = 5;
k = 15;
m = 10;

% Define dy/dt
fval(1,1) = v;
fval(2,1) = -(c*v+k*x)/m;
end