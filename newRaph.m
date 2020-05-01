% Lec 5.4 : Newton Raphson (Single variable )
% To solve non-linear equations using Newton- Raphson
% f(x) = 2-x+ln(x)
%% Initial conditions
x0 = 1.45;
maxIter = 50;
tolX = 1e-4;

%% Computation using Newton Raphson
x = x0;
xold = x0;
for i =  1:maxIter
    f = 2-x+log(x);
    df = -1+1/x;
    x = x- f/df;  % x(n+1) = x(n)-f(x)/f'(x)
    err(i)  = abs(x -xold);
    xold = x;
    
    if (err< tolX)
        break;
    end
end