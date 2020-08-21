% page 172
% y' = ry r = -10  y(0) = 2  0<= t<=5   stepsize(delta or h) = 0.02
% we get analytic solution by pencil and paper y(t) = 2*e^(-10*t)
clear;

r = -10; delta = 0.02; y(1) = 2; % matlab count from index 1
k = 0;

for time = [delta : delta : 0.5]
    k = k + 1;
    k1 = delta*r*y(k);
    k2 = delta*r*(y(k)+k1/2);
    k3 = delta*r*(y(k)+k2/2);
    k4 = delta*r*(y(k)+k3);
    y(k+1) = y(k)+1/6*(k1+2*k2+2*k3+k4);    
%     dy(k+1) = y(k) + r*y(k)*delta
%     y(k + 1) = y(k) + (r*y(k)+ r*dy(k+1))*(delta/2);
end

t = [0:delta:0.5];
y_true = 2*exp(-10*t);
plot(t,y,'g-o', t, y_true,'r-x');
xlabel('t(sec)'),ylabel('y(trajectory)');
legend('numerical approximation','analytic solution');