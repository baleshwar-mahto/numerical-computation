% Lec 7.3 : MATLAB ode45 algorithm
C0 = 1;
V0 = 0;
Vend = [1,5,10];

Vspan = [V0, Vend];

%% Solving using ODE45
[Vsol,CSol] = ode45(@(V,C) pfrFun(V,C), Vspan, C0);

