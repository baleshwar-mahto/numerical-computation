% Assignment 8 ;Problem 3
% Initialization
x0 = 5;
v0 = 0;

Y0 = [x0;v0];

%% Executing ODE
tSpan = [0 5];
[tSol,YSol] = ode45(@(t,y) fun4Spring(t,y),tSpan,Y0);
%plot(tSol,YSol(:,1),tSol,YSol(:,2));
