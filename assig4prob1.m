% Assignment 4; Problem 1
A = [1 3 0 5;-1 -9 9 2;1 -5 6 8;2 8 0 9];
b = [27;16;41;54];

%% Gauss Elimination
% get augmented matrix
Ab =  [A,b];
n = length(A);
L = eye(n);
% With A(1,1) as pivot element
for i = 2:4
    alpha = Ab(i,1)/Ab(1,1);
    L(i,1) = alpha;
    Ab(i,:) = Ab(i,:)-alpha*Ab(1,:);
end

% With A(2,2) as pivot element
for i = 3:4
    alpha = Ab(i,2)/Ab(2,2);
    L(i,2) = alpha;
    Ab(i,:) = Ab(i,:)-alpha*Ab(2,:);
end

% With A(3,3) as pivot element
i = 4;
alpha = Ab(i,3)/Ab(3,3);
L(i,3) = alpha;
Ab(i,:) = Ab(i,:)-alpha*Ab(3,:);

U = Ab(1:n,1:n);

