% Transfer function to state space ; Control system
syms s;
num = input('Enter the coefficient of numerator as [1 0 ..] ');
num = sym2poly(num);
den = input('Enter the coefficient of denominator as [1 0 ...]');
den = sym2poly(den);
[A,B,C,D] = tf2ss(num,den);
P = [0 0 1;0 1 0;1 0 0];
A = inv(P)*A*P;
B = inv(P)*B
C = C*P