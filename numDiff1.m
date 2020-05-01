% Course : Matlab programming in numerical computation
% Lec 3.1 : Differentiation in single variable
% Comparing numerical differentiation formulae for f'(x)
% Calculate f'(x) at x = 1 ; f(x) = tan-1(x)
a = 1;
trueVal = 1/(1+a^2);
h = 10.^[-1:-1:-10];
%% Forwad difference formula
fwdDiff = (atan(a+h)-atan(a))./h;
errFwd = abs(trueVal-fwdDiff);
%disp(['Error in FwdDiff : ',num2str(errFwd)]);

%% Central difference formula
ctrDiff = (atan(a+h)-atan(a-h))./(2*h);
errCtr = abs(trueVal-ctrDiff);
%disp(['Error in ctrDiff : ',num2str(errCtr)]);

%% Backwad difference formula
bkdDiff = (atan(a+h)-atan(a))./h;
errBkd = abs(trueVal-bkdDiff);
% disp(['Error in bkdDiff : ',num2str(errBkd)]);

%% Plot the graph
loglog(h,errFwd,'-b',h,errCtr,'--r',h,errBkd ,'-.m');

