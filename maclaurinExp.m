% Maclaurin series for exp(0.1)
% Lecture 2.1 :Errors in numerical Computation | Module-2
% There has been a slight modification in the code which also works fine
%  Changes made are : expVal(i+1) --> expVa and expVal(i) --> expVal
%% Seeting up the variables 
n = 5;
a = 0.1;

%% Computation 
expVal = 1.0;
currentTerm = 1.0;
for i = 1 : n
    currentTerm = currentTerm * a/i;
    expVal(i+1) = expVal(i) + currentTerm ;
    % expVal =expVal + currentTerm;
end

trueVal = exp(0.1);
err = abs(trueVal - expVal);

