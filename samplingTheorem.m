% Verification of sampling theorem 
tfinal = 0.05;
t = 0:0.00005:tfinal;
fd = input('Enter the analog frequency :');
xt = sin(2*pi*fd*t);

fs1 = 1.3*fd;
n1 = 0:1/fs1:tfinal;
xn = sin(2*pi*fs1*n1);
subplot(3,1,1);
plot(t,xt,'b',n1,xn,'r*-');
title('Undersampling plot ');


fs2 = 2*fd;
n2 = 0:1/fs2:tfinal;
xn = sin(2*pi*fs2*n2);
subplot(3,1,2);
plot(t,xt,'b',n2,xn,'r*-');
title('Nyquist plot');


fs3 = 5*fd;
n3 = 0:1/fs3:tfinal;
xn = sin(2*pi*fs3*n3);
subplot(3,1,3);
plot(t,xt,'b',n3,xn,'r*-');
title('Oversampling plot');
