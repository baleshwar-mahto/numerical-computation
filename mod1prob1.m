% Assignment 1; Problem 1
% Obtaining minimum value
%% Setting up the problem
x = [0.05:0.05:1];

%% Computation
for i = 1:length(x)
    f(i) = x(i)* log(x(i));
   
end

%% Plotting the graph
loglog(x,f);
