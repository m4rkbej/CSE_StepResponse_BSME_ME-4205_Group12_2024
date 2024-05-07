%Clear
clear
clc
close all

%%Define Transfer Function
% Mechanical Translational System (Mass, Spring, Damper)
% G(s) = 1 / (s + 0.75) (s + 0.67)

M = 1;
B = 1.42;
k = 0.5025

G_num = [1];
G_den = [M B k];
G = tf(G_num,G_den)

%step response
step(G,0:0.1:20)

