%script section_pointcarre.m


load variables.mat  %Récupère les variables

theta = lsode("pendulum_double_ressort",x0,t);  %Résoudre équa dif en theta1 avec pendulum. comme fonction, xo comme CI et par rapport à t 
figure('NumberTitle','off','Name','Pendule double: Pointcarre','Position',[35 35 900 900],'Color','w');

box on;
hold on

ech = 20;
fin = columns(t) 


%Section Pointcarré Pendule 1
subplot(2,1,1);
plot(theta(1:ech:fin,1) ,theta(1:ech:fin,2),'.','Color','b','Markersize',7);
xlabel('\theta1')
ylabel(' d\theta1/dt')



%Section Pointcarré Pendule 2
subplot(2,1,2);
plot(theta(1:ech:fin,3) ,theta(1:ech:fin,4),'.','Color','r','Markersize',7);
xlabel('\theta2')
ylabel(' d\theta2/dt')






  
