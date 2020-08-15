x = [-1:0.01:1];
y = (3 + exp(-x).*sin(6*x));
n = 0:0.01:10;
plot((0.1+0.9i).^n) % graph z
hold  % hold on
plot(x, y) % graph y
gtext('y = (3 + exp(-x)sin(6*x)') % first click
gtext('z = (0.1+0.9i)^n')  %% later click