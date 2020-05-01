% Course - Matlab programming for numerical computation
% Module-1 : Practice problems; solvedProblems1.pdf
% 2.script-> function
function pSat = steamPressure(T)
% Calculate pSat for steam
Tr = (T-273)/100;
pSat = Tr^4;
end
