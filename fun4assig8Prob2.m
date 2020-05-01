% Assignment 8 ; Problem 2
function fval = fun4assig8Prob2(t,y)

% Parameters
Ta = 20;
alpha = 2;
beta = 0.04;

% Getting temperature
N = length(y)+1;
T(1) = 80;
T(2:N) = y;
T(N+1) = 40;
h = 0.1;

%% Define dT/dt
dTdt = zeros(N + 1,1);
for i = 2:N
    dTdt(i) = alpha/h^2*(T(i+1)-2*T(i)+T(i-1))- beta*(T(i)-Ta);
end

% Extract fval from dT/dt
fval = dTdt(2:N);