%% 5* y" + 7 * y' + 4*y = f(t) page182
% f(t) = sint   y(0) = 3    y'(0) = 9

% first change the 2nd ODE into a  two 1st ODEs set
% x1 = y   x1'= x2 = y'  x2' = y"   

% x1' = x2  
% x2' = 1/5*f(t)*(sin(t)-4*x(1)-7*x(2))

[t, x] = ode45('example8',[0,6],[3,9]);
plot(t,x(:,1));
xlabel('Time(sec)'), ylabel('y trajectory');
title('graph of y, (x1)');

% x(:,2) is graph of y' which is x2 if  we graph it which is the speed
% graph dy/dt
% [t, x] = ode45('example8',[0,6],[3,9]);
% plot(t,x(:,2));
% xlabel('Time(sec)'), ylabel('dy/dt trajectory');
% title("graph of y', (x2)");