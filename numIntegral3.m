% Lec 3.4 :Numerical Integration
% To calculate numerical integration using single application of 
% Newton-Cotes

% f(x) = 2-x+ln(x)
%% Problem setup
a = 1;
h = 0.001;
b = a+2*h;
trueVal = (b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));

%% Simpson's Rule  (Single appliaction)
I_simp = h/3*(myFunInt(a)+4*myFunInt(a+h)+myFunInt(a+2*h));
err_simp = abs(trueVal-I_simp);
