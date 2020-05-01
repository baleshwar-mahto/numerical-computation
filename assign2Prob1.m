% Solving assignment 1 :Question 1
%% Setting up the problem
a = 1;
f = a* exp(a);
trueVal = (1+a)* exp(a);
err = [];
%% performing computation
for i = 1:10
    h = 10^(-i);
    expVal = funcForProb1(a,h);
    err = abs(trueVal-expVal);
    hAll(i)= h;
    errAll(i)= err;
end

%% Plotting the graph
loglog(hAll ,errAll)
xlabel('h');ylabel('error');