% Plot a line in 3-D coordinates by specifying x, y,
% and z values. Change the axes to a 3-D view using view(3).
t = linspace(0,10*pi,200);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
xlabel('x');ylabel('y');zlabel('z');