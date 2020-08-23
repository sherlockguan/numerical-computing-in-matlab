y0 = 1;
tspan = [0 5];
[t1, y1] = ode23(@(t,y)(-t*y)/sqrt(2-y^2),tspan,y0);
[t2 y2] = ode45(@(t,y)(-t*y)/sqrt(2-y^2),tspan,y0);

subplot(1,2,1);
plot(t1,y1,'-o');
grid 
axis([0 5.5 0 1])
title('plot t-y by ode23');

subplot(1,2,2);
plot(t2,y2,'-x');
grid
axis([ 0 5.5 0 1])
title('plot t-y by ode45');