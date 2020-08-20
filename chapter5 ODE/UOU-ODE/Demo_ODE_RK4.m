clear;
clc;
close all;

F=@(t,y) 2*y;% dydt = 2*y

t0 = 0; y0=2; % initial condition
t1 = 1;
n = 50; % number of timestep
dt = (t1 - t0) / n;
yall=[y0];
ypre = y0;
for t = t0:dt:t1-dt
    s1 = F(t,ypre); % have to implement this slope function
    s2 = F(t+dt/2,ypre+dt/2*s1);
    s3 = F(t+dt/2,ypre+dt/2*s2);
    s4 = F(t+dt,ypre+dt*s3);
    ynext = ypre + dt * (s1+2*s2+2*s3+s4)/6;
    yall= [yall; ynext]
    ypre = ynext;
end
t = linspace(t0,t1,n+1)';
plot(t,yall,'o','displayname','Euler'); hold on;
% exact soln?
yexact = 2*exp(2*t);
plot (t,yexact,'-r','displayname', 'Exact')

error_RK4= abs(yexact(end) - yall(end))
