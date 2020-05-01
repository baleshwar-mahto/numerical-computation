% Assignment 8 ; Problem 1
% initialization
S0 = 5.0;
X0 = 0.1;
P0 = 0;
r0 = (25*S0*X0)/(S0 + 15);

Y0 = [S0;X0;P0];

%% Executing ODE
tSpan = [0 10];
[tSol,YSol] = ode15s(@(t,y) fun4pharmaReac(t,y) ,tSpan,Y0);




