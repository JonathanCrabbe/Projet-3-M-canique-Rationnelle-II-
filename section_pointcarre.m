%script section_pointcarre.m


load variables.mat  %Récupère les variables

figure('NumberTitle','off','Name','Pendule double: Pointcarre','Position',[35 35 900 900],'Color','w');

box on;
hold on

ech = 20;
fin = columns(t) 


%Section Pointcarré Pendule 1
subplot(2,1,1);
plot(theta(1:ech:fin,1) ,theta(1:ech:fin,2),'.','Color','b','Markersize',7);
xlabel('theta1')
ylabel(' d/dt (theta1)')



%Section Pointcarré Pendule 2
subplot(2,1,2);
plot(theta(1:ech:fin,3) ,theta(1:ech:fin,4),'.','Color','r','Markersize',7);
xlabel('theta2')
ylabel(' d/dt (theta2)')






  
