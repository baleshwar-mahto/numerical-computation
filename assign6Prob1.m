% Assignment 6 ; Problem 1
Y = [73.1;79.5;81.7;80.6;88;88.6;90.8;94.4];
U = [5.7;5.78;5.86;5.93;6;6.05;6.11;6.16];
T =[300;325;350;375;400;425;450;475];
X = [ones(8,1),T,U];
phi = inv(X'*X)*X'*Y;