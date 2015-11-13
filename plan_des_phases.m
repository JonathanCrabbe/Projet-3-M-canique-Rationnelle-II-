%script plan_des_phases.m

echo off
clear
global k m1 m2 l l0 d A omega  %Initialisation paramètres 
k=20;l=10;l0=10;d=30;m1=50,m2=5;A=0;omega=0;  %Valeurs des paramètres
t=[0:0.2:40];   %Création vecteur temps
x0=[pi/2;0;0;0];  % CI : angle1 , vitesse angulaire 1, angle2, vitesse angulaire2 
theta = lsode("pendulum_double_ressort",x0,t);  %Résoudre équa dif en theta1 avec pendulum. comme fonction, xo comme CI et par rapport à t 
figure('NumberTitle','off','Name','Le pendule double avec ressort','Position',[35 35 900 900],'Color','w');
 
for i=2:max(size(t))
  
  tic
  
  
  
  %Plan des phases pendule 1: 
 
  subplot(2,1,1);
  box on; grid on;
  line(theta(i-1:i,1),theta(i-1:i,2),'Color','b','LineWidth',2);
  xlabel('theta1')
  ylabel(' d/dt (theta1)')
  
  
  %Plan des phases pendule 2:
  
  subplot(2,1,2);
  box on;grid on;
  line(theta(i-1:i,3),theta(i-1:i,4),'Color','r','LineWidth',2);
  xlabel('theta2')
  ylabel(' d/dt (theta2)')
  
  
  
  
  while toc <0.025;end;
  drawnow;

  
 end;  
