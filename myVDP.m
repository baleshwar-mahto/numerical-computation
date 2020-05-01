% Lec 8.1 : Stiff systems & solutions using ode15s
function fval = myVDP(t,y)
mu = 1;
x = y(1);
v = y(2);

fval(1,1) = v;
fval(2,1) = mu*(1-x^2)*v-x;
end