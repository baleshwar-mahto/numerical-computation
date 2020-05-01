% Assignment 8 ;Problem 4
% Initialization
N0 = 1000;
I0 = 1;
R0 = 0;

Y0 = [N0;I0;R0];

% Executing ODE
tSpan = [0 25];
[tSol,YSol] = ode45(@(t,y) fun4Infec(t,y),tSpan ,Y0);