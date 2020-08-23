function ydot  = func_sys(t,Y)
% Make a 3*1 column vector of ydot, make a row vector of Y
ydot(1,1) = 2*Y(1) + Y(2) + 5 * Y(3) + exp(-2*t);
ydot(2,1) = -3*Y(1) - 2 * Y(2) - 8 * Y(3) + 2 *exp(-2*t)-cos(3*t);
ydot(3,1) = 3*Y(1) + 3*Y(2) + 2*Y(3) + cos(3*t);
end

