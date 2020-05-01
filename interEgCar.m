% Lec 6.4 : Interpolation Options in MATLAB
% Speed in 1.5 minutes
t = 0:10:90; 
s = [45, 32, 0, 0, 7, 12, 20, 15, 29, 55];
plot(t,s,'bo');hold on ;

% Interpolation using spline
tI = 0:90;
sI = spline(t,s,tI);
plot(tI,sI,'-k');

% % Interpolation using pchip
sI_pc = pchip(t,s,tI);
plot(tI,sI_pc,'--r');