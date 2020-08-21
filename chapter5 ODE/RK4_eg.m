% page 173
% dy/dt = sint    y(0) = 0 => c= 1;  0 <= t <= 4*pi
% calculate exact sol by hand: y(t) = 1-cost

% predicted error method modified euler with higher precision
clear;
clc;
close all;


delta = 2*pi/13; % flexible step for this  problem
%(tried by author) with variation
y(1) = 0;% matlab index start from 1
k = 0;
for time = [delta: delta: 4*pi]
    k = k+1;
    deltah = delta/2;
    time_t = time - delta;
    k1 = delta*sin(time_t);
    k2 = delta*sin(time_t + deltah);
    k3 = delta*sin(time_t + deltah);
    k4 = delta*sin(time_t + delta);
%  y(k+1) = y(k) + (delta/2)*(sin(time - delta) + sin(time)); % not sin(k) this is magic num ha
    y(k+1) = y(k) + (k1 + 2*k2 + 2*k3 + k4)/6;
end

t_true = [0:delta/10:4*pi];
y_true = 1 - cos(t_true);
t = [0:delta:4*pi];
plot(t,y,'g-o',t_true,y_true,'m');
xlabel('second'), ylabel('y');
legend('numerical sol','exact sol');