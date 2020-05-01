% Assignment 5 ; Problem 2
% To solve non-linear equations using Newton- Raphson

%% Initial conditions
x0 = 4;
w = 1;q = 0.1; k = 0.25;
maxIter = 3;
%tolX = 1e-4;

%% Computation using Newton Raphson
x = x0;
xold = x0;
for i =  1:maxIter
    f = w-q*x-k*sqrt(x);
    df = -q-k/(2*sqrt(x));
    x = x- f/df;  % x(n+1) = x(n)-f(x)/f'(x)
    relErr  = abs((x -xold)/xold);
    xold = x;
end