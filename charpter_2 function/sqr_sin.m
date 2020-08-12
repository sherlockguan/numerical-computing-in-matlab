%%% file name: sqr_sin.m
function y = sqr_sin(x)
y = sin(x).^2; % .* or ./  piecewise operation
end







% first create your function 
%save the file 
% >> sqr_sin(pi/6) on pwd of matlab type this command


% >>  x = [-pi/6,pi/6]
% >> sqr_sin(x)

% x = -pi:0.01:pi
%plot(x,sqr_sin(x)), grid on