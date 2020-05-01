% Assignment 3; Problem 7
% Computing numerical intergral  of f(x) = 5+3*cos(x)
%% Problem setup
a = 0;
b = 2;
%h = 1;
h = 0.1;
% As we have to apply Simson's 1/3 rd rule 7 times
n = 7;
%% Numerical integral using single application of Simpson's 1/3 rule
% I_simp = h/3*(fun4pro7(a)+4*fun4pro7(a+h)+fun4pro7(a+2*h))

%% Numerical integral using multiple application of Simpson's 1/3 rule
xVec = a:h:b;
fVec = fun4pro7(xVec);
% Iinterval = zeros(1,7);
% for i = 1:n
%     Iinterval(i) = h/3*(fun4pro7(2*i-1)+4*fun4pro7(2*i)+fun4pro7(2*i+1));
% end
%I_simp = sum(Iinterval)
I_simp = h/3*(fVec(1)+fVec(end)+4*(sum(fVec(2:2:end-1)))+2*(fVec(3:2:end-1)));
