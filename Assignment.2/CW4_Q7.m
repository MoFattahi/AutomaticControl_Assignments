clc; clear; close all;
%%
s = tf('s');
%%
G_1 = 50 / (((s) * (s+2) * (s+5)) + 50);

[y_1 , t_1] = step(G_1);

plot(t_1 , y_1 , 'r-' , LineWidth=2)
title("System Response Comparison" , FontSize = 20);
xlabel("t(s)" , FontSize = 20 , FontWeight="bold");
ylabel("y(t)" , FontSize = 20, FontWeight="bold");

hold on

%%

G_2 = 1 / (((s) * (s+2) * (s+5)) + 50);

[y_2 , t_2] = step(G_2);

plot(t_2 , y_2 , 'b-' , LineWidth=2)
xlabel("t(s)" , FontSize = 20 , FontWeight="bold");
ylabel("y(t)" , FontSize = 20, FontWeight="bold");

%%

grid on
grid minor
set(gca,'LineWidth',1) 
legend('Desired Input(R(s)'  , 'Disturbance Input(V(s)')




