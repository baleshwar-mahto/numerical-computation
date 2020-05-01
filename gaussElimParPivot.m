% Lec 4.3 : Gauss Elimination and Back Substitution
% Solve Ax = b using  Gauss Elimination with partial pivoting
A = [1 1 1;2 1 3;3 4 -2];
b = [4;7;9];

%% Gauss Elimination
% Get augmented matrix
Ab = [A,b];
n = length(A);

% Rj = Rj -aij*Ri 
% alpha(ij) = A(j,i)/A% With A(1,1) as pivot element(i,i)
% The motto behind the below commands is to make elements below A(i,i) as 0

% With A(1,1) as pivot element
% Row exchange to ensure A(1,1) is the largest in coloumn 1
col1 = Ab(:,1);
[dummy,idx] = max(col1);
dummy = Ab(1,:);
Ab(1,:) = Ab(idx,:);
Ab(idx,:) = dummy;

% Computation in the pivot coloumn
for i = 2:3
    aplha = Ab(i,1)/Ab(1,1);
    Ab(i,:) = Ab(i,:)-alpha*Ab(1,:);
end


% With A(2,2) as pivot element
% Row exchange to ensure A(2,2) is the largest in coloumn 1
col2= Ab(2:end,2);
[dummy,idx] = max(col2);
dummy = Ab(2,:);
Ab(2,:) = Ab(idx,:);
Ab(idx,:) = dummy;


i = 3;
alpha = Ab(i,2)/Ab(2,2);
Ab(i,:) = Ab(i,:)-alpha*Ab(2,:);


%% Back substitution
x = zeros(3,1);
for i  = 3:-1:1
    x(i) = (Ab(i,end)-Ab(i,i+1:n)*x(i+1:n))/Ab(i,i);
    
end