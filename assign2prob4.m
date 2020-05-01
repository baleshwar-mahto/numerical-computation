% Assignment 1;Problem 4
% Maclaurin series for 1/(1-x),|x|<1
% f(x) = 1 + x + x^2 + ....

%% Setting up the problem
x = 0.75;
trueVal = 1/(1-x);
approxVal = 1;
atol = 0.001;
err = abs(trueVal-approxVal)
i=1
%% Performing Computation 
 while (atol < err)
     approxVal = approxVal + x^i
     err = abs(trueVal-approxVal)
     i = i + 1
 end    
 
 