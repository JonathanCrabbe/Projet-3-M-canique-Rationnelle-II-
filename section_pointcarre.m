%script section_pointcarre.m

echo off
clear
global k m1 m2 l l0 d A omega  %Initialisation paramètres 
k=20;l=10;l0=10;d=30;m1=50,m2=5;A=0;omega=0;  %Valeurs des paramètres
t=[0:0.2:40];   %Création vecteur temps
x0=[pi/2;0;0;0];  % CI : angle1 , vitesse angulaire 1, angle2, vitesse angulaire2 
theta = lsode("pendulum_double_ressort",x0,t);  %Résoudre équa dif en theta1 avec pendulum. comme fonction, xo comme CI et par rapport à t 
figure('NumberTitle','off','Name','Le pendule double avec ressort','Position',[35 35 900 900],'Color','w');

box on;
hold on
options = odeset('RelTol',1e-4);
[t1,teta1] = ode45('duffing_eq',[0:2*pi/w:100000],[0 0],options);
[t2,teta2] = ode45('duffing_eq',[0:2*pi/w:100000],[0.01 0],options);
plot(mod(teta1(1000:10:end,1),2*pi),teta1(1000:10:end,2),'.','Markersize',1)
plot(mod(teta2(1000:10:end,1),2*pi),teta2(1000:10:end,2),'.','Color','red','Markersize',1)
title('Section de Poincare stroboscopique  - echantillonnage: 2.\pi/\omega')
xlabel('\theta')
ylabel('d\theta/dt')