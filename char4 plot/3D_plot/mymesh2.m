clc;
% for any function z = f(x,y), if we want to represent the surface of
% function z by mesh, we can define: [X,Y] = meshgrid(x,y)
x_width = [-2:0.1:2]; 
y_width = [-4:0.1:4];
[X,Y] = meshgrid(x_width, y_width);
Z = X.^2 -2*(X.* Y)+ 3*Y + 2;
mesh(X,Y,Z)
xlabel('X'),ylabel('Y'),zlabel('Z')
grid on
title('Z = X^2-2XY+3Y+2')
