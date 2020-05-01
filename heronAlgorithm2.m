% Lecture 2.3 - Round-off errors and iterative methods
% Calculate sqrt(2) using Heron Algorithm
% It's an iterative method wherein we assume the result first and then keep
% on performing iterations to come to actual result

x = 0.5;              % Assuming the answer of our computation
atol = 1.0e-5;        % Setting a tolerance limit for the while loop
err = 1 ;

 %% Iterative Computation
 while(err > atol )
     xNew = 1/2 * (x + 2/x);
     err = abs(x -xNew)
     x = xNew;
 end
