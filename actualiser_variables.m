%script actualiser_variables
echo off
clear
global k m1 m2 l l0 d A omega c  %Initialisation paramètres 

%Valeurs des paramètres
k=0;
l=10;
l0=10;
d=30;
m1=50;
m2=5;
A=0;
omega=20;  
c = 200;
t=[0:0.2:40];
x0=[pi/2;0;0;0];  % CI : angle1 , vitesse angulaire 1, angle2, vitesse angulaire2 

fin = columns(t);
ech = 20;

save variables.mat  %Stocke les variables dans un fichier