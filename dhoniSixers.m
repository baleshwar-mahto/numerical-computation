% Lec 8.4 :Some Practical Examples
% To solve trajectory of a ball hit with initial velocity
vNet = 35;
theta = pi/4;

%% Initialization
x0 = 0;
y0 = 0;
u0 = vNet*cos(theta);
v0 = vNet*sin(theta);

Y0 = [x0;y0;u0;v0];

%% Executing ODE
tSpan = [0 5.1];
[tSol,YSol] = ode45(@(t,y) cricketFun(t,y),tSpan,Y0);

%% Verifying the results
plot(tSol,YSol(:,1:2));
xlabel('time');ylabel('location (m)');

figure(2)
plot(YSol(:,1),YSol(:,2),'bo');
xlabel('x (m)');ylabel('y (m)');