clc; clear; close all;
%% Question 7 | Part b

s = tf('s');
G = (19.2527) / (s^2 + 3.99 * s + 19.2527);

disp(stepinfo(G))

%% Plot the response to the step input 

[y , t] = step(G);

plot(t , y , color = 'b' , linewidth = 3)

title('System Reponse to The Step Input' , FontSize=20)
xlabel('t' , FontSize=20)
ylabel('C(t)' , FontSize=20)
grid on
grid minor
set(gca,'LineWidth',1) 