% Lec 8.3 : Methods of Lines for transient PDEs
function fval = rodConduc(t,y)

% Parameters
Ta = 25;
alpha = 0.025;
beta = 0.1;

% Getting temperature
N = length(y)+1;
T(1) = 100;
T(2:N) = y;
T(N+1) = Ta;
h = 1/N;

%% Define dT/dt
dTdt = zeros(N + 1,1);
for i = 2:N
    dTdt(i) = alpha/h^2*(T(i+1)-2*T(i)+T(i-1))- beta*(T(i)-Ta);
end

% Extract fval from dT/dt
fval = dTdt(2:N);