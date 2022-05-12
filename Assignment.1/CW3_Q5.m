clc; clear; close all;

s = tf('s');
G = (2.1016) / (s^2 + 2*s + 2.1016);

[y , t] = step(G);


step_info = stepinfo(G);


%plot the result
plot(t , y , color = '#004F3E' , linewidth = 2)

title('System Reponse to The Step Input' , FontSize=20)
xlabel('t' , FontSize=20)
ylabel('C(t)' , FontSize=20)
grid on
grid minor
set(gca,'LineWidth',1) 

disp (step_info);

