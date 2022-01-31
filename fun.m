function F = fun(theta)
b=2;

l1=4.9;
l2=4.2;
l3=3.2;

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);

X2= [b-l1*cos(theta1);(-b+l2*cos(theta2))/2; (-b+l3*cos(theta3))/2];
Y2= [0; sqrt(3)*0.5*(b-l2*cos(theta2)); -sqrt(3)*0.5*(b-l3*cos(theta3))];
Z2= [l1*sin(theta1); l2*sin(theta2); l3*sin(theta3)];

F = [((X2(1)-X2(2))^2 +(Y2(1)-Y2(2))^2 +(Z2(1)-Z2(2))^2 -3*b*b);
    ((X2(1)-X2(3))^2 +(Y2(1)-Y2(3))^2 +(Z2(1)-Z2(3))^2- 3*b*b);
    ((X2(3)-X2(2))^2 +(Y2(3)-Y2(2))^2 +(Z2(3)-Z2(2))^2-3*b*b);
    (sqrt((X2(1)-X2(2))^2 +(Y2(1)-Y2(2))^2 +(Z2(1)-Z2(2))^2) -sqrt(3)*b);
    (sqrt((X2(1)-X2(3))^2 +(Y2(1)-Y2(3))^2 +(Z2(1)-Z2(3))^2) -sqrt(3)*b);
    (sqrt((X2(3)-X2(2))^2 +(Y2(3)-Y2(2))^2 +(Z2(3)-Z2(2))^2) -sqrt(3)*b);
    ];
end