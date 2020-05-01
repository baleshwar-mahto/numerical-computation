% Course - Matlab programming for numerical computation
% Module 1:Practice Problems
% Computation of e^-0.25
n = 6;
terms = 0.25.^[1:n]./cumprod(1:n);

%% Using for loop
%for i = 1:n
%    expVal = (-1)^n.*terms(i);
%   expValAll(i) = expVal;
%end
%result = sum(expValAll);

%% Without using for loop
expVal = 1-terms(1)+terms(2)-terms(3)+terms(4)-terms(5)+terms(6)-terms(7);
