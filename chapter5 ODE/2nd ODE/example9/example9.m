% somehow not working on graph 

% y" - exp(t)*y' + t*y = 3* sin(2*t)
% y(t0) = 2,   y'(t0) = 8 tspan = [0 10]


% we set x1 = y    x2 = y'   so x1' = y'  x2' = y"
%  x1' = x2           x2' = -t*x1 + exp(t)*x2 + 3*sin(2*t)

function xp = example9(t,x)
xp = zeros(2,1);
xp(1) = x(2);
xp(2) = -t* x(1) + exp(t) * x(2) + 3* sin(2*t);
