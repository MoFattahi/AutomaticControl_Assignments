clc ; clear ; close all;

s = tf('s');
G = (3.0705) / (s^2 + 3.0705 * 0.58997 * s + 3.0705);

[y , t] = step(G);

stepinfo(G)

%%

plot(t , y , 'b -' , LineWidth=3);
title('System Reponse to The Step Input' , FontSize=20)
xlabel('t' , FontSize=20)
ylabel('C(t)' , FontSize=20)
grid on
grid minor
set(gca,'LineWidth',1) 