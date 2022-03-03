clear all
global l1 l2 l3 b

b=30/sqrt(3);
l1=46;
l2=5;
l3=14;

X1 = [b; -b/2; -b/2];
Y1 = [0; b*sqrt(3)/2; -b*sqrt(3)/2];
Z1 = [0; 0; 0];
C1 = 'b';

x0= [pi/2,pi/2,pi/2];

x = fsolve(@fun,x0);

C2 = 'r';

theta1=x(1)
theta2=x(2)
theta3=x(3)
X2= [b-l1*cos(theta1);-b/2+l2*cos(theta2)/2; -b/2+l3*cos(theta3)/2];
Y2= [0; sqrt(3)*b/2-sqrt(3)*l2*cos(theta2)/2; -sqrt(3)*b/2+sqrt(3)*l3*cos(theta3)/2];
Z2= [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)];
centroid=[sum(X2)/3; sum(Y2)/3; sum(Z2)/3];

x_cap = [X2(1)-centroid(1);Y2(1)-centroid(2);Z2(1)-centroid(3);]/sqrt((X2(1)-centroid(1))^2+(Y2(1)-centroid(2))^2+(Z2(1)-centroid(3))^2)
y_cross = cross([X2(1)-Y2(1);X2(2)-Y2(2);X2(3)-Y2(3)],[X2(1)-Z2(1);X2(2)-Z2(2);X2(3)-Z2(3)]);
y_cap = y_cross/(sqrt(y_cross(1)^2+y_cross(2)^2+y_cross(3)^2))
z_cap= cross(x_cap, y_cap)