x = -10:0.01:10;
x = x + (x== 0)*eps; % in older version without this: divide by zero error
y = sin(x)./x ;
plot(x,y);grid on
xlabel('x')
ylabel('y')

%eps is a very very small(negligible) num