% Course - Matlab programming for numerical computation
% Lec 3.2 : Differentiation in single variable
% Double differentiation for f(x) = tan-1(x) ,x = 1;
a = 1;
h  = 1.0e-4;
trueVal = -2*a/(1+a^2)^2;                           % f"(x) = -2x/(1+x^2)^2
numDiff = (atan(a+h) -2*atan(a) +atan(a-h))/(h^2);  % f"(x) = f(x+h)-2f(x)+f(x-h)/ h^2
err = abs(trueVal-numDiff);
