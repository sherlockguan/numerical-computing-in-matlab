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
    slope = F(t,ypre); % have to implement this slope function
    ynext = ypre + dt * slope;
    yall= [yall; ynext]
    ypre = ynext;
end
t = linspace(t0,t1,n+1)';
plot(t,yall,'o','displayname','Euler'); hold on;
% exact soln?
yexact = 2*exp(2*t);
plot (t,yexact,'-r','displayname', 'Exact')

