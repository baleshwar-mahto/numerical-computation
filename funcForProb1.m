% Defining a function for problem 1 of assignment 1
function expVal = funcForProb1(a,h) 
% f(x) = a*exp(a)
expVal =(3 *(a*exp(a)) -4*((a-h)*exp(a-h)) +((a-2*h)* exp(a-2*h)))/ (2 * h);
