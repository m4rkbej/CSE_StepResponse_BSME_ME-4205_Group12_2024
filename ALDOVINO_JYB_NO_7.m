%Clear
clear
clc
close all

%%Define Transfer Function
% Mechanical Translational System (Mass, Spring, Damper)
% G(s) = 6*s^4 + 5*s^3 + 4*s^2 + 3s + 2 / s^5 + 2*s^4 + 3*s^3 + 4*s^2 + 5s + 1 

A = 6
B = 5
C = 4
D = 3
E = 2

F = 1
G = 2
H = 3
I = 4
J = 5
K = 1

G_num = [A B C D E];
G_den = [F G H I J K];
G = tf(G_num,G_den)

%step response
step(G,0:0.1:20)

