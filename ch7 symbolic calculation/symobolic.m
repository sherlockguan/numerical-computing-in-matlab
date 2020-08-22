%symbolic calculation (maintain the equ without get the outcomes of nums
syms a b x y v u;
c = 5;
y = a*x^2 + b*x + c;

whos;

% for polynomial  factor<=>expand 
factor(x^2 + 3*x + 2);

expand((x+2)*(x+1));


a = expand((1+u)^6); % so convinient!
m = expand(sin(u+v));
n = expand(tan(u+v)^2);

% % simplify: give the simplest output of input,sometimes same as factor
% simplify((sin(x))^2 + (cos(x))^2) 
% simplify(cos(a) + i*sin(a)) % sometimes bug

%% solve
eqn = x^2 + 5*x - 6 == 0;
solve(eqn, x)

eqn2 = x^4 == 1;
solve(eqn2,x)

%% solve for multiple equations 
syms x y;
F1 =  x + 3*y -7 ==0
F2 = 2*x + y == 0
[x,y] = solve(F1,F2,x,y)



