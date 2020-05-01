% Assignment 5 ; Problem 3


%% Initial condtions
xo = 4;% This is an initial guessed solution of equation(1)
w = 1;q = 0.1;k = 0.25;
maxIter = 20;

x = xo;
xold = xo;
for i = 1:maxIter
    x = (w-k*sqrt(x))/q;
    err(i) = abs(x- xold);
    xold = x;
    
    
end
    