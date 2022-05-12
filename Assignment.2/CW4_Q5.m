clc; clear; close all;
%% Transfer Function
s = tf('s');
G = (36) / (s^2 + (8.2776) * s + 36);

%% Step Response of The System
[y , t] = step(G);

plot(t , y , color = '#004F3E' , LineWidth = 2);

title("System Response to The Unit Step Input" , FontSize = 20);
xlabel("t(s)" , FontSize = 20 , FontWeight="bold");
ylabel("y(t)" , FontSize = 20, FontWeight="bold");

grid on
grid minor
set(gca,'LineWidth',1) 


disp("Q5(Step Info):");
disp(stepinfo(G));
%%