% Lec 1.3 : Loops and Execution control
% Fibonacci series using while loop till the terms less than 200
%% Setting up the problem
fibo = [1,1];                             % Defing the first two terms of the Fiboacci series

%% Perfoming the computation
while (fibo(end)< 200)
    fiboNew = fibo(end) + fibo(end-1);    %  a(n) = a(n-1) + a(n-2);
    fibo = [fibo ,fiboNew];               % Appending fiboNew terms to the vector fibo = [1,1]
end

% fibo(end) = [];
fibo = fibo(1:end-1);                     % Eliminating the last element of the vector fibo