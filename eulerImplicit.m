% Lec 7.1 : Introduction to Euler's Method
% Solve ODE -IVP using Euler's Implicit Method
% y'= -2ty ; y(0) = 1
t0 = 0;
y0 = 1; % Initial conditions
tEnd = 5;
h = 0.01;
N = (tEnd-t0)/h;

%% Initializing Solutions
T = [t0:h:tEnd]';
Y = zeros(N + 1,1);
Y(1) = y0;

%% Solving using Euler's Implicit Method
for i = 1:N
    t = T(i)+h;
    y = fsolve(@(y) y-Y(i)+h*(2*t*y) ,Y(i));
    T(i+1) = t;
    Y(i+1) = y;
end

%%  Plot results and Obtain Errors
plot(T,Y);
Ytrue = exp(-T.^2);
ERR = abs(Ytrue-Y);
