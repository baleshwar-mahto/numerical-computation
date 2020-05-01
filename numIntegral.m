% Lec 3.4 :Numerical Integration
% To calculate numerical integration using single application of 
% Newton-Cotes
% f(x) = 2-x+ln(x)
% Integral of f(x) is x-x^2/2 +2ln(x)
%% Problem setup
a = 1;
h = 0.0001;
b = a+2*h;
trueVal = (b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));

%% Trapezoidal Rule  (Single appliaction)
% h= (b-a);
% fa = myFunInt(a);
% fb = myFunInt(b);
% I_trap = h/2*(fa+fb);
% err_trap = abs(trueVal-I_trap);
% 
%% Simpson's 1/3 Rule
% h = (b-a)/2;
I_simp = h/3*(myFunInt(a)+4*myFunInt(a+h)+myFunInt(a+2*h))
err_simp = abs(trueVal-I_simp)

%% Display Results
% disp(['Errors are: ',num2str(err_trap),'  ' ,num2str(err_simp)]);
