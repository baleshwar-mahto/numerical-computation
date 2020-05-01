% Assignment 7, problem 3
function fVal = fun4higherRK(x)
V = 10^6; W = 10^6; Q = 10^5;
a = W/V; b = Q/V;

fVal = a-b*x;
end