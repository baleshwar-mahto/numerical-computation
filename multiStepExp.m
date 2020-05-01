% Lecture 2.4 : Step-wise methods and error propagation
% Defining a function to be called by scriptExpResults.m
function expVal = multiStepExp(a,h)
N = a/h;
%% Multistep computation
expVal = 1;
for i = 1:N
    expVal = expVal*(1+h+0.5*h^2);   % Taylor series : f(x+h) = f(x) + hf'(x) + h^2f"(x)/2 + ....
    % expval =expVal*(1+h);
                             % here f(x) = e^x ; f'(x)
    
end