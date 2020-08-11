%polynomial function
% f(x) = a_1*x^n + a_2*x^(n-1)+...+a_n*x + a_(n+1)
% coefficient vector f = [ a_1, a_2,..., a_(n+1)] from highest power to lowest no jump(0)

% f*g 
f = [1 -2 5 10];
g = [1 4 -8];
h = conv(f,g);

%f/g  quotient and reminder
[quot,remi] = deconv(f,g);



%polyval(a,x)
% h(x) = 2*x^3 - 2*x^2 + 5*x + 2 , h(2) = ?
a = [2 -2 5 2];
%x = 2;
x = [0:5] % calculate  value of h when x = 0,1,2,3,4,5
h = polyval(a,x);
plot(x,h);

%roots(a)

roots(a);

f = [1 -2 -19 8 60]
roots(f)


