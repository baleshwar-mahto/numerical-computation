% Lec 8.1 : Multi-Variable ODE
% Solve ODE-IVP using Standard RK-4 Method
y0 = [1;0];
t0 = 0;
tEnd = 10;
h = 0.1;
N = (tEnd-t0)/h;

%% Initializing Solutions
T = [t0:h:tEnd];
Y = zeros(2,N +1);
Y(:,1) = y0;

%% Solving using RK-4 Method
for i = 1:N
    yi = Y(:,1);
    k1 = massSpringFun(T(i),yi);
    k2 = massSpringFun(T(i)+h/2,yi+h*k1/2);
    k3 = massSpringFun(T(i)+h/2,yi+h*k2/2);
    k4 = massSpringFun(T(i)+h,yi+h*k3);
    
    yNew = yi + h/6*(k1+2*k2+2*k3+k4);
    Y(:,i+1) = yNew;
end

%% Final Solution and Plotting
yEnd = Y(:,end);
plot(T,Y);
