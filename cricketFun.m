% Lec 8.4 : Some Practical Examples
function fval = cricketFun(t,Y)

% Get variables
x = Y(1);
y = Y(2);
u = Y(3);
v = Y(4);

% Constants
g = 9.81;
kappa = 0.006;

% Describing dY/dt
fval = zeros(4,1);
fval(1) = u;
fval(2) = v;
fval(3) = -kappa*u;
fval(4) = -g;
end
