x = linspace(0,pi); % x = 0 :(step:)pi
y1 = cos(x);
plot(x,y1)

hold on 
y2 = cos(2*x);
plot(x,y2)

legend('cos(x)','cos(2x)')