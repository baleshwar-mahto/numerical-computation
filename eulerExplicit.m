% Lec 7.1 : Introduction to Euler's Method
% Solve ODE -IVP using Euler's Explicit Method
% y'= -2ty ; y(0) = 1
t0 = 0;
y0 = 1; % Initial conditions
tEnd = 5;
h = 0.001;
N = (tEnd-t0)/h;

%% Initializing Solutions
T = [t0:h:tEnd]';
Y = zeros(N + 1,1);
Y(1) = y0;

%% Solving using Euler's Explicit Method
for i = 1:N
    fi = -2*T(i)*Y(i);
    Y(i+1) = Y(i)+h*fi;
end

%%  Plot results and Obtain Errors
plot(T,Y);
Ytrue = exp(-T.^2);
ERR = abs(Ytrue-Y);

