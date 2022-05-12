clc; clear; close all;
% Define the transfer function of each block
G1=tf([0 1],[1 7]);
G2=tf([0 0 1],[1 2 3]);
G3=tf([0 1],[1 4]);
G4=tf([0 1],[1 0]);
G5=tf([0 5],[1 7]);
G6=tf([0 0 1],[1 5 10]);
G7=tf([0 3],[1 2]);
G8=tf([0 1],[1 6]);
G9=tf([1],[1]); % Transducer at the input

T1=append(G1,G2,G3,G4,G5,G6,G7,G8,G9);

Q=[1 -2 -5 9
2 1 8 0
3 1 8 0
4 1 8 0
5 3 4 -6
6 7 0 0
7 3 4 -6
8 7 0 0];

inputs=9;
outputs=7;

Ts=connect(T1,Q,inputs,outputs);

% Transfer Function
tf(Ts)

% Obtain Poles And Zeors of The System
num = [0,0,0,6,132,1176,5640,1.62e04,2.857e04,2.988e04,1.512e04];
den = [1,33,466,3720,1.867e04,6.182e04,1.369e05,1.981e05,1.729e05,6.737e04,1.044e04];

[z , p , k] = tf2zp(num , den)


