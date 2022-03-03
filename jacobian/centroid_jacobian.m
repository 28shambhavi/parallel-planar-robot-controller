function cent = centroid_jacobian(theta)

global l1 l2 l3 b

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);

X2= [b-l1*cos(theta1);(-b+l2*cos(theta2))/2; (-b+l3*cos(theta3))/2];
Y2= [0; sqrt(3)*0.5*(b-l2*cos(theta2)); -sqrt(3)*0.5*(b-l3*cos(theta3))];
Z2= [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)];

cent=[sum(X2)/3; sum(Y2)/3; sum(Z2)/3];

end