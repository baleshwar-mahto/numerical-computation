% function for assignment 6 ; problem 1
function fErr = fun4assign6Prob1(phi,U,T,Y)
% Get parameter
c = phi(1);
a = phi(2);
b = phi(3);

% Calculate function value
result = c+ a*T+b*U;
fErr = Y-result;
end
