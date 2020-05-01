% Lec 8.1 : Multi-Variable ODE
y0 = [1;0];
tSpan = [0 10];

% Solve using ode45
[tSol,ySol] = ode45(@(t,y) massSpringFun(t,y) ,tSpan,y0);

% Plot results
plot(tSol,ySol(:,1));