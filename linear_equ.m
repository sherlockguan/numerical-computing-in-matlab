% % calculate and plot u + 2v = 5 4u-v = 2
% A = [1 2; 4 -1];
% b = [5;2];
% x = A\b;
% sol = inv(A)*b; % same way
%plot
u = 0:0.1:10;
v = (-u+5)/2;
plot(u,v)
hold % we plot on the same page
v = 4*u-2;
plot(u,v)



