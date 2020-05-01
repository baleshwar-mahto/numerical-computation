% Lecture 2.3 : Round off errors and Iterative Methods
% To calculate numerical derivative of atan(1) | tan-1(a)
a = 1;
h = 0.01;
trueVal =  1/(1+a^2);                % D'(tan-1(a)) = 1/(1+a^2)
approxVal= (atan(a+h)-atan(a))/ h;   % f'(x) = lim f(x+h) -f(x) / h
                                     %         h-> 0
err1 = abs(trueVal - approxVal)/h    %        = f(x+h) -f(x)/h

h = 0.001;
approxVal= (atan(a+h)-atan(a))/ h;
err2 = abs(trueVal- approxVal)/h 
