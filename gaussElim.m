% Lec 4.2 : Gauss Elimination and Back Substitution
% Solve Ax = b using naive Gauss Elimination
A = [1 1 1;2 1 3;3 4 -2];
b = [4;7;9];

%% Gauss Elimination
% Get augmented matrix
Ab = [A,b];
n = 3;

% Rj = Rj -aij*Ri 
% alpha(ij) = A(j,i)/A% With A(1,1) as pivot element(i,i)
% The motto behind the below commands is to make elements below A(i,i) as 0

% With A(1,1) as pivot element
alpha = Ab(2,1)/Ab(1,1);
Ab(2,:) = Ab(2,:)-alpha*Ab(1,:);
alpha = A(3,1)/A(1,1);
Ab(3,:) = Ab(3,:)-alpha*Ab(1,:);

% With A(2,2) as pivot element 
alpha =Ab(3,2)/Ab(2,2);
Ab(3,:) = Ab(3,:)-alpha*Ab(2,:);

%% Back substitution
x = zeros(3,1);
for i  = 3:-1:1
    x(i) = (Ab(i,end)-Ab(i,i+1:n)*x(i+1:n))/Ab(i,i);
    
end