% Clear
clear
clc
close all

%% Second Order Underdamped System
% G(s) = 1 / s^2 + 2*s + 1
% G(s) = 1 / s^2 + 2(0.1) + 9

d = 1;

a = 1;
b = 2.1;
c = 9;

G_num = [d];
G_den = [a b c];
G = tf(G_num,G_den)

% step response
step(G,0:0.1:20)