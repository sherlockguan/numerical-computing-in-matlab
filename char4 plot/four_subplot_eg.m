t = 0:0.01:20;
y = sin(t);
subplot(2, 2, 1); % row col (2 by 2 grids, the first one)
plot(t,y);
title('sin(t)');


z = cos(2*t);
subplot(2,2,2);
plot(t,z);
title('cos(2t)');


x = exp(-t);
subplot(2,2,3);
plot(t,x);
title('exp(-t)');


w = exp(-sin(t));
subplot(2,2,4);
plot(t,w);
title('exp(-sin(t))');





