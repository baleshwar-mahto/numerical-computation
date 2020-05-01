% Asssignment 1;problem 2
% Defining a function for the above problem
function [evenSum,funVal] = vecSum(x) 
if length(x)/2 == 0
    x1 = x(2:2:length(x));
else
    x1 = x(2:2:length(x-1));
end
evenSum = sum(x1);

 for i = 1:length(x)
     y = i.*x(i);
     yAll(i) = y;
 end
 funVal = sum(yAll);
end
  
     
     




   