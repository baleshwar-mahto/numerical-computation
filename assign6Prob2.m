% Assignment 6 , Problem 2
x = [0.5;1;2;4;6;8;10];
tau = [2.53;3.11;3.65;4.2;4.79;5.07;5.33];
phi_guess = [5;0.5];
phi_stress = lsqnonlin(@(phi) fun4assign6Prob2(phi,x,tau),phi_guess);
