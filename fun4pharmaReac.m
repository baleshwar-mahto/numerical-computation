% Assignment 8 ; problem 1
function fval = fun4pharmaReac(t,Y)

% Get variables
S = Y(1);
X = Y(2);
P = Y(3);
r = (25*S*X)/(15 + S);
% Constants
Sin = 5;
Yx = 0.7;
Yp = 0.3;
D = 4;

% Describing dY/dt
fval = zeros(3,1);
fval(1) = D*(Sin-S)-r;
fval(2) =-D*X + Yx*r;
fval(3) = -D*P + Yp*r;
end