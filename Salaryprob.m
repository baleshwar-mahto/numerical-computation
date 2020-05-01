% Salary problem of assignment 1
%% Setting up the problem
A = 1;
B = 1.25;
n = 1;
%% Performing computation
while A > B
    A = A + 0.06*A;
    B = B + 0.02*B;
    n = n+1;
end