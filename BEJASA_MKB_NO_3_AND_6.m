% Clear
clear
clc
close all

%% 3. Define Transfer Function
% Second Order Critically Damped System
% G(s) = 1 / s^2 + 2s + 1

G_num3 = 1;
G_den3 = [1 2 1];
G3 = tf(G_num3,G_den3);

%% 6. Define Transfer Function
% Electrical Filter with Multiple Poles
% G(s) = (4s^3 + 3s^2 + 2s + 1) / (s^4 + 2s^3 + 3s^2 + 4s + 1)

G_num6 = [4 3 2 1];
G_den6 = [1 2 3 4 1];
G6 = tf(G_num6,G_den6);

% step response
step(G3,0:0.1:20)
figure
step(G6,0:0.1:20)
figure