clear all 
close all
clc
%% Exercice 1
% d�finition du mod�le du 1er ordre
 K=2;
 tau=0.5;
 H1=tf(K,[tau 1]);
 step(H1)
 dcgain(H1)
%% Exercice 2
xi_vec=[0.1:0.1:2];
n=length(xi_vec)
K=1;
wn=1;
for i=1:n
    xi=xi_vec(i)
    H2=tf([K],[1/wn^2 2*xi/wn 1]);
 figure(3)
    step(H2,30)
    hold on
    pause
    %hold on
end
grid on
    