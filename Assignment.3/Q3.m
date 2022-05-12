clc; clear; close all; 

% Transfer Function
s = tf('s');
System_1 = 1 / ((s^2) * (s + 2));
System_2 = 1 / ((s^4) * (s + 2));
System_3 = 1 / (s^2 + 1);


myplot = nyquistplot(System_1 , "g");
opt = getoptions(myplot);
opt.Title.String = 'Nyquist Plot(n = 2, P = 2)';
setoptions(myplot,opt)
grid on


