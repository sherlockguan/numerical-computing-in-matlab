
% doc sinh  hyperbolic sin    asinh inverse hyperbolic sin

x = -5:0.01:5;
y = sinh(x);
plot(x,y);
title('hyperbolic sinh func')
xlabel('x');ylabel('y')
grid on

% Create a vector of values between -3 and 3 with a step of 0.25. 
% Calculate and plot the values of sinh(x), exp(x), 
% and exp(-x). As expected, 
% the sinh curve is positive where exp(x) is large, 
% and negative where exp(-x) is large.

% 
%  is half the difference of the functions exp(x) and exp(-x) . 
%  Verify this by plotting the functions.

x = -3:0.25:3;
y1 = sinh(x);
y2 = exp(x);
y3 = exp(-x);
plot(x,y1,x,y2,x,y3)
grid on
legend('sinh(x)','exp(x)','exp(-x)','Location','bestoutside')


%% plot cosh(x) = [exp(x) + exp(-x)]/2
x = -5:0.01:5; 
y = cosh(x);
plot(x,y)
grid on


x = -3:0.25:3;
y1 = cosh(x);
y2 = exp(x);
y3 = exp(-x);
plot(x,y1,x,y2,x,y3)
grid on
legend('cosh(x)','exp(x)','exp(-x)','Location','bestoutside')

%% tanh(x) = sinh(x)/cosh(x)

