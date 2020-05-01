% Assignment 8; Problem 4
function fval = fun4Infec(t,Y)

% Get variables
N = Y(1);
I = Y(2);
R = Y(3);

% Constansts
a = 0.0004;
r = 0.16;

% Describing dY/dt
fval = zeros(3,1);
fval(1) = -a*N*I;
fval(2) = a*N*I-r*I;
fval(3) = r*I;

end