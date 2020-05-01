% Assignment 8; Problem 2
% To run transient heat conduction in a rod
N = 10;
T0(1,1) = 80;
T0(N + 1,1) = 40;

% Solving ODE
tSpan = [0 5];
y0 = T0(2:N);
[tSol,ySol] = ode45(@(t,y) fun4assig8Prob2(t,y), tSpan,y0);

% Plotting results
%plot(tSol,ySol);