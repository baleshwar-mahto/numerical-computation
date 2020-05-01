% Lec 5.3 : Fixed point Iteration in single variable
% To solve non-linear equations using Fixed point Iteration
% We are solving : f(x) = 2 -x + log(x) ---1
% Case 1: g(x) --> 2 + ln(x)
% Case 2: g(x) --> exp(x-2)

%% Initial condtions
xo = 2;  % This is an initial guessed solution of equation(1)
maxIter = 50;
tolX = 1e-4;
x = xo;
xold = xo;
for i = 1:maxIter
   % x = 2 + log(x); % Case 1
   x =  exp(x-2); % Case 2
    err(i) = abs(x- xold);
    xold = x;
    
    if (err(i)<tolX)
        break;
    end
end
    