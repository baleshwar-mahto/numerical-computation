% Lec 6.4 : Interpolation Options in MATLAB
h = 0:24;
T = [25.6, 25.4 ,25.1, 24.9, 24.9, 25.2, 25.9, 26.3, 27.1, 29.3, 30.8, 31.2, 32.1, 31.0, 30.3, 31.4, 30.6, 31.8, 29.6,  28.4, 28.1, 27.4 , 26.8, 26.1,26.6];
    
% Interpolating temperature values
hI = [2.5 ,6.5, 10.25, 17.0];
TI = spline(h,T,hI);

    