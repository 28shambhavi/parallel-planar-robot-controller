function xyz_cap = orientation(theta)

global l1 l2 l3 b

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);

X2= [b-l1*cos(theta1);(-b+l2*cos(theta2))/2; (-b+l3*cos(theta3))/2];
Y2= [0; sqrt(3)*0.5*(b-l2*cos(theta2)); -sqrt(3)*0.5*(b-l3*cos(theta3))];
Z2= [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)];

centroid=[sum(X2)/3; sum(Y2)/3; sum(Z2)/3];

x_cap = [X2(1)-centroid(1);Y2(1)-centroid(2);Z2(1)-centroid(3);]/sqrt((X2(1)-centroid(1))^2+(Y2(1)-centroid(2))^2+(Z2(1)-centroid(3))^2);
y_cross = cross([X2(1)-Y2(1);X2(2)-Y2(2);X2(3)-Y2(3)],[X2(1)-Z2(1);X2(2)-Z2(2);X2(3)-Z2(3)]);
y_cap = y_cross/(sqrt(y_cross(1)^2+y_cross(2)^2+y_cross(3)^2));
z_cap= cross(x_cap, y_cap);

xyz_cap=[x_cap y_cap z_cap];
end