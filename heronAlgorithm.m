% Lecture 2.3 - Round-off errors and iterative methods
% Calculate sqrt(2) using Heron Algorithm
% It's an iterative method wherein we assume the result first and then keep
% on performing iterations to come to actual result
x = 0.5;
for i = 1:10
    xNew = 1/2*(x + 2/x);    % x(i+1) = 1/2(x(i) + 2/x(i))
    err = abs(x - xNew)
    x = xNew
end
