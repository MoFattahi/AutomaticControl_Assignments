s = tf('s');

% Transfer Function
G = (1 / ((s+2)^2 * (s+10)));



[y , t] = step(G);
 
 
plot(t , y , 'b-' , LineWidth=2)
 
title("Total Response(Forced + Natural) of the system" , FontSize = 20);
xlabel("t(s)" , FontSize = 20 , FontWeight="bold");
ylabel("y(t)" , FontSize = 20, FontWeight="bold");

grid on
grid minor
set(gca,'LineWidth',1) 


disp("Step Info:");
disp(stepinfo(G));


