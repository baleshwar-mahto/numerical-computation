% Lec 1.3: Loops and execution control
% Fibonacci series using for loop ; only 10 terms

%% Setting up the background
n = 10;
fibo = [1,1];                          % Initializing the 1st two terms of the series

%% Computing the fibonacci terms
for i = 3:n
    fibo(i) = fibo(i-1) + fibo(i-2);   % a(n) = a(n-1) + a(n-2);    
end