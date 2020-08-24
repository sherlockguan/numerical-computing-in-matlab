%% 5* y" + 7 * y' + 4*y = f(t) page182
% f(t) = sint   y(0) = 3    y'(0) = 9

% first change the 2nd ODE into a  two 1st ODEs set
% x1 = y   x1'= x2 = y'  x2' = y"   

% x1' = x2  
% x2' = 1/5*f(t)*(sin(t)-4*x(1)-7*x(2))
function xdot = example8(t,x)
xdot(1) = x(2);
xdot(2) = 1/5 * (sin(t) - 4* x(1) - 7 * x(2));
xdot = [xdot(1);xdot(2)]
end

% 
% function Xdot = example8(t,x)
% A = [0 1; -4/5 -7/5];
% b = [0; 1/5];
% Xdot = A*x + b* sin(t)
% end

