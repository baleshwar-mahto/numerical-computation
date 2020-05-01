% Lecture 2.2 -Round-off errors and Iterative methods
% To calculate numerical derivative of tan-1(x)
% Errors in numerical computation can round-off errors and truncation errors and there may be tradeoff between them 
% Changes made :i=2:4 --> 2:2:14 , hAll(i-1)--> hAll(i/2) & 
% hAll(i-1)--> hAll(i/2)
a = 1;
trueVal = 1/(1+a^2);                  % D'(tan-1(a)= 1/(1+a^2)
 
%% Calculating derivatives
for i = 2:2:14
    h = 10^(-i);
   approxVal = (atan(a+h)-atan(a))/h;
   err = abs(trueVal -approxVal);
   hAll(i/2) = h ;
   errAll(i/2) = err;
end

%% Plot error V/S step size
loglog(hAll , errAll)                  % Logarithmic plot c
                                            
 
