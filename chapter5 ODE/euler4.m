% page 168
% dy/dt = sint    y(0) = 0 => c= 1;  0 <= t <= 4*pi
% calculate exact sol by hand: y(t) = 1-cost

% predicted error method modified euler with higher precision
clear;
clc;
close all;


delta = 2*pi/13;y(1) = 0;% matlab index start from 1
k = 0;
for time = [delta: delta: 4*pi]
    k = k+1;
    y(k+1) = y(k) + (delta/2)*(sin(time - delta) + sin(time)); % not sin(k) this is magic num ha
end

t = [0:delta:4*pi];
y_true = 1 - cos(t)
plot(t,y,'b-o',t,y_true,'m-x');
xlabel('second'), ylabel('y');
legend('numerical sol','exact sol');