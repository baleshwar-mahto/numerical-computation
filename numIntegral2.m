% Lec 3.4 :Numerical Integration
% To calculate numerical integration using single application of 
% Newton-Cotes

% f(x) = 2-x+ln(x)
%% Problem setup
a = 1;
h = 0.001;
b = a+h;
trueVal = (b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));

%% Trapezoidal Rule  (Single appliaction)
I_trap = h/2*(myFunInt(a)+myFunInt(b));
err_trap = abs(trueVal-I_trap);
