%specifying coordinates of the base for b=1
%length of side = b * root of 3

b=2
X1 = [b; -b/2; -b/2]
Y1 = [0; b*sqrt(3)/2; -b*sqrt(3)/2]
Z1 = [0; 0; 0]
C1 = ['b'];

%properties of the linear actuators
%length of LA
l1=1;
l2=1;
l3=1;
%angle between LA and base
theta1=pi/2;
theta2=pi/2;
theta3=pi/2;
%calculating coordinates of the platform
X2 = [b-l1*cos(theta1); -b/2+l2*cos(theta2)/2; -b/2+l3*cos(theta2)/2]
Y2 = [0; sqrt(3)*b/2-sqrt(3)*l2*cos(theta2)/2; -sqrt(3)*b/2+sqrt(3)*l3*cos(theta3)/2]
Z2 = [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)]
C2 = ['r'];
figure
fill3(X1,Y1,Z1,C1,X2,Y2,Z2,C2)
line([X1(1) X2(1)],[Y1(1) Y2(1)],[Z1(1) Z2(1)], 'Color','black','LineWidth',2);
line([X1(2) X2(2)],[Y1(2) Y2(2)],[Z1(2) Z2(2)], 'Color','black','LineWidth',2);
line([X1(3) X2(3)],[Y1(3) Y2(3)],[Z1(3) Z2(3)], 'Color','black','LineWidth',2);