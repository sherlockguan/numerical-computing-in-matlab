% plot multiplot on the same page 
    %plot(X1,Y1,LineSpec1,X2,Y2,LineSpec,..)
    % or use A; hold on ; B
x = linspace(0,pi); % x = 0 :(step:)pi
y1 = cos(x);
y2 = cos(2*x);
plot(x,y1,'g*',x,y2,'mo')
legend('cos(x)','cos(2x)')
