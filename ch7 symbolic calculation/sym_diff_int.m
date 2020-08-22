syms x n a
%%  diff: differentiation , derivative
diff(x^3 + 2*x + 5) 
diff(x^n)
diff(sin(x)^2)
% if we want set the times of diff
 % get the second derivative of ...
diff(x^3 + 2*x + 5,2)

%% int: integration, integral
int(x)
int(a^x)
int(x*sin(x))

% int(f,a,b) take  integral of f in [a, b]
int(x,1,2)
y = int(x*sin(x),-2,7)
double(y) % float

%% dsolve: calculate differential equation
syms y(t)
% dy/dt + 2*y = 12*t^2
eqn = diff(y,t) + 2*y == 12*t^2
dsolve(eqn)

syms a y(t)
eqn1 = diff(y,t) == a*y;
dsolve(eqn1)

%Specify the second-order derivative of a function y 
%by using diff(y,t,2) or diff(y,t,t). Similarly, 
%specify the n-th order derivative by using diff(y,t,n).
%% y" = ay
syms y(t) a
eqn = diff(y,t,2) == a*y;
ySol(t) = dsolve(eqn)

%% with condition !!! in syms count from ZERO 
syms y(t) a b
eqn = diff(y,t,2) == a^2*y;
Dy = diff(y,t);
cond = [y(0)==b, Dy(0)==1];% COUNT FROM ZERO
ySol(t) = dsolve(eqn,cond)
