% Assignment 7 : Problem 2
% dx/dt = W/V-x(Q/V) ; V = 10^6 , W = 10^6 , Q = 10^5;
% dx/dt = a-bx
t0 = 0;
x0 = 0;
tEnd = 10;
h = 0.05;
N = (tEnd-t0)/h;
V = 10^6; W = 10^6; Q = 10^5;
a = W/V; b = Q/V;

%% Initializing Solutions
T = [t0:h:tEnd]';
X = zeros(N + 1,1);
X(1) = x0;

%% Solving using RK-2 Midpoint Method
for  i = 1:N
    k1 = a-b*X(i);
    xNew = X(i) + h*k1/2;
    k2 = a-b*xNew;
    X(i+1) = X(i) + h*k2;
end

% Xtrue = 10*(1-exp(-0.1*10));
% err = abs(Xtrue-X(end))