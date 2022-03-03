% specifying coordinates of the base for b=1
%length of side = b * root of 3
clear all
global l1 l2 l3 b

%b= 1/(2*sqrt(3));
%l1=2/3;
%l2=3/5;
%l3=3/4;

b=30/sqrt(3);
l1=46;
l2=5;
l3=14;

X1 = [b; -b/2; -b/2];
Y1 = [0; b*sqrt(3)/2; -b*sqrt(3)/2];
Z1 = [0; 0; 0];
C1 = 'b';

%properties of the linear actuators
%length of LA


x0= [pi/2,pi/2,pi/2];
%options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

x = fsolve(@fun,x0);

C2 = 'r';

theta1=x(1)
theta2=x(2)
theta3=x(3)

X2= [b-l1*cos(theta1);-b/2+l2*cos(theta2)/2; -b/2+l3*cos(theta3)/2];
Y2= [0; sqrt(3)*b/2-sqrt(3)*l2*cos(theta2)/2; -sqrt(3)*b/2+sqrt(3)*l3*cos(theta3)/2];
Z2= [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)];

centroid=[sum(X2)/3; sum(Y2)/3; sum(Z2)/3]

xyz_cap=orientation(x)

figure
fill3(X1,Y1,Z1,C1,X2,Y2,Z2,C2)
line([X1(1) X2(1)],[Y1(1) Y2(1)],[Z1(1) Z2(1)], 'Color','black','LineWidth',2);
line([X1(2) X2(2)],[Y1(2) Y2(2)],[Z1(2) Z2(2)], 'Color','black','LineWidth',2);
line([X1(3) X2(3)],[Y1(3) Y2(3)],[Z1(3) Z2(3)], 'Color','black','LineWidth',2);
line([0 centroid(1)],[0 centroid(2)],[0 centroid(3)], 'Color','black','LineWidth',2);
grid on
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')