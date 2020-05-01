% Lec 6.3 : Nonlinear and Functionl Regression
function fErr  = rxnFunction(phi,xx,yy,)
% Get parameters
k0 = phi(1);
E = phi(2);
n = phi(3);

% Calculate rate
C = xx(:,1);
T = xx(:,2);
r = k0*exp(-E./T).*(C.^n);
fErr = yy-r;
end
