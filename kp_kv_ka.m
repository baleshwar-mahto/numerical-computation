% Control systems Program
% Static error constants
syms s;
G = input('Enter the value of G(s)');
kp = limit(G,s,0);
kv = limit(s*G,s,0);
ka = limit(s^2*G,s,0);
disp(kp);
disp(kv);
disp(ka);
