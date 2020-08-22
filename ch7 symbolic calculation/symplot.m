%% plot for symbolic func: ezsurf ezplot
syms x y;
ezplot(sin(x) + cos(x))
hold on
ezsurf(sin(sqrt(x^2 + y^2))/sqrt(x^2+y^2))