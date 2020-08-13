% global variable a and b
% z = f(x,y) = a*x + b*y
%%% filename = xy_const.m
function [z] = xy_const(x,y)
global a; global b;
z = a*x + b*y
end


%<<global a; global b;
%<< a = 2; b = 3; xy_const(2.3,1.2)