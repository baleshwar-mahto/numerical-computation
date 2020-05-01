% nptel -matlab
% module 1 ; Solved problems
% The vertical location from ground when a ball is thrown upwards is given by:
% , - = . / - − 0.5 4- ) . Find the ball location at every 0.1 seconds interval until ball
% reaches ground again. Initial velocity is 20 m/s and 4 = 9.8 m/s )
tmax = (2*20)/9.8;
t = 0:0.1:tmax;
y = 20*t-0.5*9.8*t.^2;
t2 = 0:0.5:tmax;
y2 = 20*t2-0.5*9.8*t2.^2;
plot(t,y,'-b',t2,y2,'bo');