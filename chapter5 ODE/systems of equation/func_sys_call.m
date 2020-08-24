[t,y] = ode23('func_sys', [0 pi/2], [1;-1;0])
% get 24*1 array of t and 24*3 array of y on the command window
% whos:  to check
plot(t,y(:,1), '+',t,y(:,2),'x',t,y(:,3),'o')
hold

title('page 181 example 2')
text(0.3, 14, '_+_ y_1')
text(0.3, 10, '_x_ y_2')
text(0.3, -12, '_o_ y_3')
xlabel('time')
hold off