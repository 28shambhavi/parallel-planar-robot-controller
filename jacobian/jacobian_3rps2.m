%main file
%specifying coordinates of the base for b=1
%length of side = b * root of 3
clear
global l1 l2 l3 b

b=30/sqrt(3);

for i = 0:1:15
    l1=15+i;
    l2=15+mod(i,3);
    l3=18+mod(i,2);
    l0=[l1; l2; l3];
    x0= [pi/3,pi/3,pi/3];
    theta = fsolve(@fun,x0);
    centroid=centroid_jacobian(theta);

    v_tool=[-3; 1; 2];
    l_dot = Jveq_jacobian(theta)\v_tool;
    l1=l1+l_dot(1);
    l2=l2+l_dot(2);
    l3=l3+l_dot(3);
    l0_new=[l1; l2; l3];
    theta = fsolve(@fun,x0);
    centroid_new=centroid_jacobian(theta);

    A=[l0 l0_new v_tool centroid centroid_new l_dot]
    filename = 'linearvelocity.xlsx';
    writematrix(A,filename,'Sheet',1,'WriteMode','append');

end
