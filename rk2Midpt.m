
% Lec 7.2 : Runge -Kutta (RK-2) method
% Solve ODE-IVP using RK-2 Midpoint Method
% y' = -2ty;
% y(0) = 1;
t0 = 0;
y0 = 1;
tEnd = 5;
h = 0.1;
N = (tEnd-t0)/h;

%% Initializing Solutions
T = [t0:h:tEnd]';
Y = zeros(N + 1,1);
Y(1) = y0;

%% Solving using RK-2 Midpoint Method
for  i = 1:N
    k1 = -2*T(i)*Y(i);
    tNew = Y(i) + h/2;
    yNew = Y(i) + h*k1/2;
    k2 = -2*tNew*yNew;
    
    Y(i+1) = Y(i) + h*k2;
end

%% Plotting and Error Computation
plot(T,Y);
Ytrue = exp(-T.^2);
ERR = abs(Y-Ytrue);