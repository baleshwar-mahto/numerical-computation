% Lec 8.2 : Stiff System & Solution using ode15s
function favl = multiVarFun(t,y)
A = [-5.7,1.85;13.2,-4.3];
favl = A*y;
end