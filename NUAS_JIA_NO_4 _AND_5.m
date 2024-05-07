% clear
clear
clc
close all

syms t s

%% 4.  Define Transfer Function
% First Order System
%G(s)=1 / s + 1

M= 0
B= 2 
K= 1 

G_num4 = [1];
G_den4 = [M,B,K];
G4=tf(G_num4,G_den4)

%% 5.  Define Transfer Function
% Resonant System
%G(s)=(8s^6+7s^5+6s^4+5s^3+4s^2+3s+2)/(s^7+2s^6+3s^5+4s^4+5s^3+6s^2+7s+1)

G_num5 = [8 6 5 4 3 2];
G_den5 = [1 2 3 4 5 6 7 1];
G5=tf(G_num5,G_den5)

%s step response
step(G4,0.1:20)
figure
step(G5,0:0.1:20)
figure
