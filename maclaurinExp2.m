% Maclaurin series for exp(0.1)
% Lecture 2.2 : Truncation errors and Taylor's series
% Maclaurin series : e^a = 1 + a + a^2 /2! + a^3/ 3! + a^4/4! + ...
% changes made: plot(aAll, err) ---> loglog(aAll, err)

%% Setting up the variables for computing  e^a
n = 3;
aAll = [0.1 , 0.05 , 0.02 , 0.01 ];
vec = [1:n];
err = [];
 
%% Computation using for loop and arrays
for i = 1:length(aAll)
   a = aAll(i);
   terms = a.^vec./cumprod(vec); %  Calculating (x^n/ n!) and also .^ and ./ are used for element-wise operation
   expVal = 1 + cumsum(terms);
   trueVal = exp(a);
   err =[err;abs(trueVal - expVal)];       
end

%% Plotting the graphs
loglog(aAll ,err);                     % Logarithmic plot
% plot(aAll, err);                     % Simple plotting
xlabel('step size');ylabel('error');   % Labelling the graph
hold on                                % Command to prevent previous graph to be overwritten
figure(2)
plot(log10(aAll),log10(err));
shg                                    % command for showing graph
