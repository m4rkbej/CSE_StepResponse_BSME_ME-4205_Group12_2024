% Clear
clear
clc
close all

%% Nonlinear System Approximation
% G(s) = (10*s^4 + 8*s^3 + 6*s^2 + 4*s + 2) / 
%        (s^5 + 3*s^4 + 5*s^3 + 7*s^2 + 9*s + 1)

a = 10;
b = 8;
c = 6;
d = 4;
e = 2;

f = 1;
g = 3;
h = 5;
i = 7;
j = 9;
k = 1;

G_num = [a b c d e];
G_den = [f g h i j k];
G = tf(G_num,G_den)

% step response
step(G,0:0.1:20)



