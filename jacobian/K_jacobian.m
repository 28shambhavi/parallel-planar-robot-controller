function K = K_jacobian(theta)

global l1 l2 l3

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);

K=[2*l1-3*cos(theta1)+l2*cos(theta1)*cos(theta2) - 2*l2*sin(theta1)*sin(theta2), 2*l2 - 3*cos(theta2) + l1*cos(theta1)*cos(theta2) - 2*l1*sin(theta1)*sin(theta2), 0;
    0, 2*l2 - 3*cos(theta2) + l3*cos(theta2)*cos(theta3) - 2*l3*sin(theta3)*sin(theta2), 2*l3-3*cos(theta3) + l2*cos(theta2)*cos(theta3)-2*l2*sin(theta2)*sin(theta3);
    2*l1-3*cos(theta1) + l3*cos(theta1)*cos(theta3)-2*l3*sin(theta1)*sin(theta3), 0, 2*l3-3*cos(theta3) + l1*cos(theta1)*cos(theta3)-2*l1*sin(theta1)*sin(theta3);];
end