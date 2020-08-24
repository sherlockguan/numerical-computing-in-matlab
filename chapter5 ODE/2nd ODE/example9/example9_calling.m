% y" - exp(t)*y' + t*y = 3* sin(2*t)
% y(t0) = 2,   y'(t0) = 8 tspan = [0 10]


% we set x1 = y    x2 = y'   so x1' = y'  x2' = y"
%  x1' = x2           x2' = -t*x1 + exp(t)*x2 + 3*sin(2*t)
tspan = [0,10];

[t,x] = ode45('example9', tspan, [2,8]);
plot(t,x(:,1));

grid