% Lec 5.6 :Newton Raphson (Multi variable)
% To solve sequence of non-linear equations using Newton Raphson
%% Initial Conditions
X0 = [-1;-1;1];
maxIter = 50;
tolX = 1e-6;

%% Computation using Newton Raphson
X = X0;
Xold = X0;
for i = 1:maxIter
    [f,j] = lorenzSysNR(X);
    X = X-inv(j)*f;  % x(n+1) = x(n)-f(x)/f'(x)
    err(:,i) = abs(X-Xold);
    Xold = X;
    if (err(:,i)< tolX)
        break;
    end
end
    