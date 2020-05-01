% Lecture 2.4: Step-K>> wise methods and error propagation
% To understand errors in multistep methods
% Using e^(0.1) computation
% We will use this sript to understand how scripts and functions are
% written in MATLAB projects

%% Problem setup
a = 0.1;
trueVal = exp(a);

%% Computation using multistep exp method
for i = 1:3
    h = 10^(-i);
    expVal = multiStepExp(a,h);
    err = abs(trueVal-expVal);
    hAll(i)= h;
    errAll(i)= err;
end
%% Plot error V/S step-size
loglog(hAll,errAll,'-bo');                 % Logarithmic plot
