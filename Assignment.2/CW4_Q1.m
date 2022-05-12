A = [-4,0,0 ; 0,-2,1 ; 0,-1,-2];
B = [1;0;0];
C = [1,0,1];
D = 0;

% Initial Condition
X_0 = [1;1;1];

% Define the System
system = ss(A,B,C,D);

% Forced Response 
[y_1 , t_1] = step(system);

% Natural Reponse
[y_2 , t_2] = initial(system ,X_0 , t_1);

% Total Response
y_total = y_1 + y_2;


plot(t_1 , y_total , 'r-' , LineWidth=2)

title("Total Response(Forced + Natural) of the system" , FontSize = 20);
xlabel("t(s)" , FontSize = 20 , FontWeight="bold");
ylabel("y(t)" , FontSize = 20, FontWeight="bold");
ylim([0 , 3]);

grid on
grid minor
set(gca,'LineWidth',1) 

disp("Step Info:");
disp(stepinfo(system));

disp("Transfer Function:");
tf(system)

