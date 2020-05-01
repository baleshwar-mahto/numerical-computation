% Course - Matlab programming for numerical computation
% Lec 3.2 : Differentiation in single variable
% Single and double differentiation for f(x) = 2-x+ln(x) ,x = 1;
%% Setting up the problem
a = 1;
h = 1.0e-4;
trueVal1= 1/a -1;
trueVal2 = -1/a^2;

%% Single differentiation
Diff1 = ((2-a-h+log(a+h))-(2-a+h+log(a-h)))/(2*h);
err1 = abs(trueVal1-Diff1);

%% Double differentiation
Diff2 = ((2-a-h+log(a+h))+(2-a+h+log(a-h))-2*(2-a+log(a)))/(h^2);
err2 = abs(trueVal2-Diff2);


