%% Define Parameters and Initial Conditions
param.g = 9.81;
param.kappa =0.006;
u0 = 35 *cos(pi/4);
v0 = 35*sin(pi/4);

%% Settings up and Solving problem
x0 =[0;0; u0;v0 ];
tSpan = [0 20];
[tOut,XOut]= ode45(@ballTrajectoryFun, tSpan,x0,[],param);

%% Displaying the results
figure(1);
plot(XOut(:,1),Xout(:,2),'bo');
xlabel('x (m)');
ylabel('y (m)');

%% Animating results
exitCode = ballAnimation(tOut ,XOut);

