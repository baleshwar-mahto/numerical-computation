% Course - Matlab programming for numerical computation
% Week 1 ;Tutorial :using Arrays
allMarks = [24,44,36;52,57,68;66,53,69;85,40,86;15,47,25;79,72,82];
mechMarks = [36,76,73,72,28,91];

% Appending Mechanics marks to the array
A = horzcat(allMarks,mechMarks');

% Halving the marks obtained by students in mechanics
A(:,4) = A(:,4)./2;

% Extracting marks of Chetan
chetanMarks = A(3,:);

% Extracting marks of Deepak and Farah
marksOfDeepakAndFarah = A([4 6],1:3);

% Average marks of all students in each course
mean(A);

% Scaling all the marks out of 100
A(:,1:3) = A(:,1:3)./10;
A(:,4) = A(:,4)./5
