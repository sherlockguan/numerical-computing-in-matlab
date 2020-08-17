% doc plot3
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t); % must be here
grid on;
text(0,0,0,'Origin');
title('A Helix graph');
xlabel('sin(t)'), ylabel('cos(t)'),zlabel('t')
