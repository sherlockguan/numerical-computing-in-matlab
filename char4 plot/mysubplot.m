%doc subplot
subplot(2,1,1); % generate 2 rows  by 1 column of windows plot on first window
x = linspace(0,10);
y1 = sin(x);
plot(x,y1)
legend('sin(x)');

 % generate 2 rows  by 1 column of windows plot on 2nd window
subplot(2,1,2); 
y2 = sin(5*x);
plot(x,y2)
legend('sin(5*x)');