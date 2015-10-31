function dy = pendulum_double_ressort(x,t);
global k m1 m2 l l0 d A omega
dy=zeros(4,1);
Moment_unitaire__a_la_fixation_du_pendule1=(-l^2*sin(x(1))*(cos(x(1))-cos(x(3)))+l*cos(x(1))*(l*sin(x(1))-d-l*sin(x(3))))/sqrt((l*sin(x(1))-d-l*sin(x(3)))^2+l^2*(cos(x(1))-cos(x(3)))^2);
Moment_unitaire__a_la_fixation_du_pendule2=(-l^2*sin(x(3))*(cos(x(1))-cos(x(3)))+l*cos(x(3))*(l*sin(x(1))-d-l*sin(x(3))))/sqrt((l*sin(x(1))-d-l*sin(x(3)))^2+l^2*(cos(x(1))-cos(x(3)))^2);
extension_du_ressort=l0-sqrt((l*sin(x(1))-d-l*sin(x(3)))^2+l^2*(cos(x(1))-cos(x(3)))^2);
dy(1) = x(2);
dy(2) = 1/(m1*l*l)*(A*cos(omega*t)-9.81*m1*l*sin(x(1))+k*extension_du_ressort*Moment_unitaire__a_la_fixation_du_pendule1);
dy(3) = x(4);
dy(4) = 1/(m2*l*l)*(              -9.81*m2*l*sin(x(3))-k*extension_du_ressort*Moment_unitaire__a_la_fixation_du_pendule2);