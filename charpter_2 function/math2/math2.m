%%% filename: math2.m

%format long  % long digits of decimal numbers
format short % commonly use short decimal
%  format mat => pi ~= 355/133
pi
sqrt(4)
sqrt(2345.676)
sqrt(3-5*i)

Y = exp(1)  % e
M = exp(i*pi)   %  -1.0000 + 0.0000i
%round(M) CLEAN UP REDUNDENT DIGIT
round(M) %-1

exp(-2.3)
exp([-1 0 1 2 3])


% graph example
x = [-2:0.1:5];plot(x,exp(x));
xlabel('x');ylabel('y');


%% inverse function of exp is natural logarithm (lnx)=>log page72
log(exp(5)) %5
exp(log(5))%5

log(exp(1))  

log(2+3*i)
log([1 2 3])

% a natrual log graph example 

x = [0.1:0.1:10];plot(x,log(x));
title('natural logarithm');xlabel('x');ylabel('y');

%% x = 10^y; y = log10(x)
%% x = 2^y ; y = log2(x)
log10([100 200 1000])
log2([8 23 256 1000])

%% tangent function
x = [-pi/2+0.01:0.01:pi/2-0.01];
plot(x,tan(x));xlabel('x');ylabel('y');


%% inverse trigonometric function
%y = sin(x) x = asin(y)

%% plot arctangent(x) =>atan(x)
x = [-10:0.01:10];plot(x,atan(x));
xlabel('x');ylabel('y');

