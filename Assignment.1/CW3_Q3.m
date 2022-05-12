clc ; clear ; close all;
%%
A = [-1 , 0 ; 2 , -2];
B = [1 ; 0];
C = [1 , 1];
D = 0;

% Initial Condition
X_0 = [1 ; 2];


% Define the System
system = ss(A,B,C,D);

% Forced Response 
[y_1 , t_1] = step(system);

% Natural Reponse
[y_2 , t_2] = initial(system ,X_0 , t_1);

% Total Response
y_total = y_1 + y_2;


plot(t_1 , y_total , 'r-' , LineWidth=2)

hold on

%% 

t = t_1;
y = 2 + exp(-2 * t);
plot(t , y , 'b--' , linewidth = 2 )

%%

title('System Reponse Comparison' , FontSize=20)
xlabel('t' , FontSize=20)
ylabel('C(t)' , FontSize=20)
ylim([0 4])
grid on
grid minor
set(gca,'LineWidth',1) 
legend('Formula Result'  , 'Matlab Result')



