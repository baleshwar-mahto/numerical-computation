% Assignment 5 ; Problem 4
function fval = fun4Prob4(t)

v0 = 20; r = 0.35; g = 9.8; vr = g/r;
fval = (v0+vr)*(1-exp(-r*t))-r*vr*t;
end
