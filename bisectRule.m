% Lec 5.1 : Non-linear equations in single variable
% Script file to use Bisection method
% To solve 2-x +ln(x) = 0

%% Initial Guess
xl = 1; % Lower bound of x
xu = 4; % Upper bound of x

fl = fun4Bisec(xl); % 2-xl+log(xl);
fu = fun4Bisec(xu); %2-xu+log(xu);

% Check if signs of fl and fu are different
% The above check is necesarry because then only root exits between xl and
% xu

if (fl*fu> 0)
    error('Initial guesses should have different signs')
end

%% Iterative solution using Bisetion Rule
maxIter = 100;% We are settting the maximum number of iterations for this iterative method
tolX = 1e-4;
for i = 1:maxIter
    err = abs(xl-xu);
    xNew = (xl+xu)/2;
    fNew = 2-xNew+log(xNew);
    
    if(fl*fNew > 0)
        xl = xNew;
        fl = fNew;
    else
        xu = xNew;
        fu = fNew;
    end
    if (abs(err)<tolX)
        break;
    end
end
