% matlab ODE function
% ode23 : RK2+RK3 bigger stepsize quicker than ode45
% ode45: RK4+RK5 Better curve
%   dy/dt =  y' = f(t,y) in ode23:  [t,y] = ode23('ydot',tspan, y0)

% solve: y' = 2*t
tspan = [0 5];
y0 = 0;
[t,y] = ode23(@(t,y) 2*t, tspan, y0);
subplot(1,2,1);
plot(t,y,'-o');
title('plot t-y by ode23');
tspan = [0 5];
y0 = 0;
[t,y] = ode45(@(t,y) 2*t, tspan, y0);
subplot(1,2,2)
plot(t,y,'-x')
title('plot t-y by ode45')















