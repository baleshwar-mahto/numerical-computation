% Assignment 7 ; Problem 1
% dx/dt = W/V-x(Q/V) ; V = 10^6 , W = 10^6 , Q = 10^5;
% dx/dt = a-bx
t0 = 0;
x0 = 0; % Initial conditions
tEnd = 10;
h = 0.05;
N = (tEnd-t0)/h;
% V = 10^6; W = 10^6; Q = 10^5;
% a = W/V; b = Q/V;
%% Initializing Solutions
T = [t0:h:tEnd]';
X = zeros(N + 1,1);
X(1) = x0;

%% Solving using Euler's Explicit Method
for i = 1:N
    k1 = fun4higherRK(X(i));
    k2 = fun4higherRK(X(i)+h*k1);
    k3 = fun4higherRK(X(i)+(h*k1)/4 +(h*k2)/4);
    fi = k1+ k2+ 4*k3;
    X(i+1) = X(i)+(h/6)*fi;
end

% Xtrue = 10*(1-exp(-0.1*10));
% err = abs(Xtrue-X(end));
