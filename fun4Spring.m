% Assignment 8 ; problem 3
function fval = fun4Spring(t,Y)
% Get variables
x = Y(1);
v = Y(2);

% Constants
W = 0.5;

% Describing dY/dt
fval = zeros(2,1);
fval(1) = v;
fval(2) = -(3*v+2*x+3*sin(W*t));
end