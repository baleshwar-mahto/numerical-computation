% Assignment 6, Problem 2
x = [0.5;1;2;4;6;8;10];
z = log(x);
tau = [2.53;3.11;3.65;4.2;4.79;5.07;5.33];
y = log(tau);
X = [ones(7,1),z];
phi = inv(X'*X)*X'*y;
n = phi(2);
m = exp(phi(1));
m = 3.0491 ; n = 0.2450;