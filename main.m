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
  subplot(3,2,1,"replace")
  box on;grid on;
  title(('Le pendule double avec ressort'))
  axis([-45 45 -22 22])
  xlabel('m');ylabel('m');
 
  line([0 +l*sin(theta(i,1))],[  0 -l*cos(theta(i,1))],'Color','r','LineWidth',3);
  line([d d+l*sin(theta(i,3))],[0 -l*cos(theta(i,3))],'Color','r','LineWidth',3);
  line([+l*sin(theta(i,1)) d+l*sin(theta(i,3))],[-l*cos(theta(i,1)) -l*cos(theta(i,3))],'Color','b','LineWidth',2);
  line([+l*sin(theta(i,1))],[-l*cos(theta(i,1))],'Color','r','Marker','.','Markersize',30);
  line([d+l*sin(theta(i,3))],[-l*cos(theta(i,3))],'Color','r','Marker','.','Markersize',30);
 
  Energie=0.5*m1*l^2*theta(i,2)^2+0.5*m2*l^2*theta(i,4)^2-m1*9.81*l*cos(theta(i,1))-m2*9.81*l*cos(theta(i,3))+1/2*k*(l0-sqrt((l*cos(theta(i,1))-l*cos(theta(i,3)))^2+(d-l*sin(theta(i,1))+l*sin(theta(i,3)))^2))^2;
 % pour vérifier si l'équation du mvt est correcte.Energie est constante si A =0
  text(-16,7,['t(s)=',num2str(t(i))])
  
  subplot(3,2,2);
  box on;grid on;
  line(t(i-1:i),theta(i-1:i,1),'Color','b','LineWidth',2);
  line(t(i-1:i),theta(i-1:i,2),'Color','r','LineWidth',2);
  xlabel('t(s)')
  ylabel('dq1/dt - rouge (1/s) ou q1 - bleu (radian)')
  
  %  fname = sprintf('E:/frame%02d.jpg',i); % pour sauver image par
  %  print(fname) % image l'animation
  
  
  %Plan des phases pendule 1: 
 
  subplot(3,2,3);
  box on;grid on;
  line(theta(i-1:i,1),theta(i-1:i,2),'Color','b','LineWidth',2);
  xlabel('theta1')
  ylabel(' d/dt (theta1)')
  
  
  %Plan des phases pendule 2:
  
  subplot(3,2,4);
  box on;grid on;
  line(theta(i-1:i,3),theta(i-1:i,4),'Color','r','LineWidth',2);
  xlabel('theta2')
  ylabel(' d/dt (theta2)')
  
  
  
  
  while toc <0.025;end;
  drawnow;

  
 end;  
