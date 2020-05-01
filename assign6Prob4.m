% time in seconds
t = 0:2:16;
% temperature in degree centigrade
T = [25,42,66,89,100,100,92,81,73];

% interpolation
tI =[3,9];
sI = spline(t,T,tI);
pI = pchip(t,T,tI);