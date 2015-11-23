%script diagramme_bifurcation.m

load variables.mat



fig1=figure('Name','Diagrammes de bifurcations - Double Pendule');
%fig2=figure('Name','Diagrammes de bifurcations - Double Pendule - CI: (0,0)');
%fig3=figure('Name','Diagrammes de bifurcations - Double Pendule - CI: (0,1/1000)');
%fig4=figure('Name','Diagrammes de bifurcations - Double Pendule - CI: (0,2/1000)');

 
for parametre=0.9:0.01:2  %Indiquer les valeurs du paramètre à moduler ici
   A = parametre %Indiquer le paramètre à moduler ici
   for i=0:2
   i
   clear theta
   theta = lsode("pendulum_double_ressort",[0,i/1000,0,0],t); 
  
   if i==0
      figure(fig1)
      plot(parametre,theta(1:ech:fin,2), 'Color', 'r','Marker','s' ,'Markersize',2);
      hold on; 
      %figure(fig2)
      %plot(parametre,theta(1:ech:fin,2),'rs','Markersize',2)
      %hold on
   end
   
   if i==1
      figure(fig1)
      plot(parametre,theta(1:ech:fin,2), 'Color','b','Marker','s','Markersize',2);
      hold on; 

      %figure(fig3)
      %plot(parametre,theta(1:ech:fin,2),'bs','Markersize',2)
      %hold on
   end
  
   if i==2
      figure(fig1)
      plot(parametre,theta(1:ech:fin,2), 'Color','g','Marker','s','Markersize',2);
      hold on; 
      %figure(fig4)
      %plot(parametre,theta(1:ech:fin,2),'gs','Markersize',2)
      %hold on
   end
   end
end    
   
figure(fig1);
axis([0.9 2 -1 3])
title('Diagramme de bifurcation du double pendule - paramètre: A');
xlabel('A');
ylabel('d\theta1/dt');
 

#{
 
 figure(fig2);
axis([0.9 2 -1 3])
title('Diagramme de bifurcation du double pendule - paramètre: k');
xlabel('k');
ylabel('d\theta1/dt');
 
figure(fig3);
axis([0.9 2 -1 3])
title('Diagramme de bifurcation du double pendule - paramètre: k');
xlabel('k');
ylabel('d\theta1/dt');
 
figure(fig4);
axis([0.9 2 -1 3])
title('Diagramme de bifurcation du double pendule - paramètre: k');
xlabel('k');
ylabel('d\theta1/dt'); 

#}


  