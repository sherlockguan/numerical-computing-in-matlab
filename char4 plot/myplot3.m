x = 0:0.1:50;
y = sin(x);

plot(x,y,'r:')
xlabel('x')
ylabel('y')
title('y = sin(x) graph')
grid on
%% make the graph more suitable size instead of take place the whole paper
axis([0 50 -2 2])  % x is [0, 50] y is [-2 2]


