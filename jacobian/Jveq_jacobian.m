function Jveq = Jveq_jacobian(theta)

global l1 l2 l3

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);

Jvtool=[-cos(theta1), 0.5*cos(theta2), 0.5*cos(theta3);
    0, -sqrt(3)*0.5*cos(theta2), sqrt(3)*0.5*cos(theta3);
sin(theta1), sin(theta2), sin(theta3);];

Jvtool_s=[l1*sin(theta1), -0.5*l2*sin(theta2), -0.5*l3*sin(theta3);
    0, sqrt(3)*0.5*l2*sin(theta2), -sqrt(3)*0.5*l3*sin(theta3);
    l1*cos(theta1), l2*cos(theta2), l3*cos(theta3);];

Jveq=Jvtool-(Jvtool_s*K_jacobian(theta)/Ks_jacobian(theta));


end