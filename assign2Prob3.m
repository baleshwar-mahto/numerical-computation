% Assignment 2; Problem 3
% Solving an non-convergent infinite series
% i.e. S(n) = 1/2 + 2/3 + 3/4 + .... + n/(n+1);
%% Setting up the problem
% n = 100;
% n = 250;
% n = 500;
n = 1000;

%% Performing computation
for i = 1:n
    s = i/(i+1);
    sAll(i) = s;
    
end

