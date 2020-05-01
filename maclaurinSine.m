% Using pre-provided termplate for sine function
function [sinVal] = maclaurinSine(x,n)

% Template file for Assignment-2
% Compute approximation of sin(x) using MacLaurin
% Series upto the n-th order term (x^n/n!)
% ----- DO NOT EDIT THIS PART OF THE CODE -----   
numerator = x.^[1:n];
denom = cumprod(1:n);
vec = [1, numerator./denom];

% ----- DO NOT EDIT ANYTHING ABOVE THIS LINE -----    
% PLEASE USE "vec" for your further calculations
% ---- YOU MAY START EDITING THE FUNCTION NOW ----

if n/2 ==0                 % when n is even 
    vec = vec(2:2:end-1);
else
    vec = vec(2:2:end);    % when n is odd
end
for i = 2:2:(n/2)
    vec(i)= -vec(i);
end
[sinVal] = sum(vec);
end