% Lec 7.3: MATLAB ode45 Algorithm
t0 = 0;
y0 = 1;
tEnd = 5;

%% Solving using ODE45
[tSol,ySol] = ode45(@(t,y) firstODEfun(t,y), [t0 tEnd],y0);

%% Plot results
plot(tSol,ySol);
