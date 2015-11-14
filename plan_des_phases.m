%script plan_des_phases.m

load variables.mat  %Récupère les variables

theta = lsode("pendulum_double_ressort",x0,t);  %Résoudre équa dif en theta1 avec pendulum. comme fonction, xo comme CI et par rapport à t 
figure('NumberTitle','off','Name','Pendule double: phases','Position',[35 35 900 900],'Color','w');
 
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
