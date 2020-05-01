% Lec 1.3 : Loops and execution control
% Display location of ball it vertically at every 0.1s
% s = ut + 1/2 *at^2
%% Setting the problem variables
vo = 20;                 
g = 9.8;
y = 0;
t = 0;

%% Performing the computation
while (y >= 0)
   % disp(['At t = ',num2str(t),',   location = ',num2str(y)]);
    t = t + 0.1;
    y = vo*t-g*t^2/2;   
  
end   