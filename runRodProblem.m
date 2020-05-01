% Lec 8.3 :Methods of Lines for transient PDEs
% To run transient heat conduction in a rod
N = 10;
T0(1,1) = 100;
T0(N + 1,1) = 25;

% Solving ODE
tSpan = [0 20];
y0 = T0(2:N);
[tSol,ySol] = ode45(@(t,y) rodConduc(t,y), tSpan,y0);

% Plotting results
plot(tSol,ySol);