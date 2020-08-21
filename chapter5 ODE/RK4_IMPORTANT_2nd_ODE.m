%% page 175
% please use RK4 to find the solution of 2nd order of ODE
% y" + 2y' + 5y = u   y(0) = 1, y(0) = 0, u = 0
% change a 2nd ODE to two first ODE , companion matrix = [0 1; -5 -2]
%https://www.youtube.com/watch?v=fd7ioT_wwPE&list=PLUl4u3cNGP63oTpyxCMLKt_JmB0WtSZfG&index=30
clear;
%% x1 = y, x2 = y'= x1', x2' = y"
tspan = 10; % time interval is 10 seconds
h = 0.001; % time step
% matlab index start from 1
% below: (initial cond) x1(1) = 1 =>y(1) = 1; x2(1)=0 => y'(1) = 0
x(1,1)=1; x(1,2) = 0; u = 0;

k = 0;
for time = [h:h:tspan]
    k = k + 1;
     % two 1st order ODE of original
        % x1' = x2
        % x2' = -2*x2 - 5*x1
    k1 = h*x(k,2); % h*x2(k) => h*y'(k)
    j1 = h*(-5*x(k,1) - 2*x(k,2) + u); % pay attention to u .especially u!=0
    
    k2 = h*(x(k,2) + j1/2);
    j2 = h*(-5*(x(k,1) + k1/2) - 2*(x(k,2) + j1/2) + u);
    
    k3 = h*(x(k,2) + j2/2);
    j3 = h*(-5*(x(k,1) + k2/2) -2*(x(k,2) + j2/2) + u);
    
    k4 = h*(x(k,2)+j3);
    j4 = h*(-5*(x(k,1) + k3) - 2*(x(k,2)+j3)+u);
    
    x(k+1,1) = x(k,1) + (k1 +2*k2 + 2*k3 + k4)/6; % x1 = y, y(k+1) = ...
    x(k+1,2) = x(k,2) + (j1+2*j2+2*j3+j4)/6; % x2 = y', y'(k+1)=...
end

t = [0:h:tspan];
plot(t,x(:,1));
hold on
plot(t,x(:,2));
legend('t-x1(y)plot',"t-x2(y')plot");

