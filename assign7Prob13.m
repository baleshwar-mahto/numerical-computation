% Assignment 7; Problem 4; Q.13 and 14
tspan = [0,240,480];
T0 = 1200;
[tsol,TSol] = ode45(@(t,T) fun4assign7(t,T), tspan, T0);