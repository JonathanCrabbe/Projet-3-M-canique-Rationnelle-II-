%script diagramme_bifurcation.m

load variables.mat

for c=0.9:0.01:2
   c
   for i=0:2
   i
   clear y
   theta = lsode("pendulum_double_ressort",x0,t); 
  
   if i==0
      figure(fig1)
      plot(c,y(30:50,2),'rs','Markersize',2);
      hold on
      figure(fig2)
      plot(c,y(30:50,2),'rs','Markersize',2)
      hold on
   end
if i==1
      figure(fig1)
      plot(c,y(30:50,2),'bs','Markersize',2);
      hold on
      figure(fig3)
      plot(c,y(30:50,2),'bs','Markersize',2)
      hold on
   end
  
   if i==2
      figure(fig1)
      plot(c,y(30:50,2),'gs','Markersize',2);
      hold on
      figure(fig4)
      plot(c,y(30:50,2),'gs','Markersize',2)
      hold on
   end
   end