x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

figure
plot(x,y1,'g:',x,y2,'b-.o',x,y3,'m*')

%doc plot

%%linespec: color+marker, linestyle
% doc color
% blue(b) green(g) red cyan magenta yellow black(k)

%doc marker: . x; o ; * ;  s(square); d(diamond)'; < > v ^ (tirangle with diff
%directions); p:pentagram, h(hexagram)

%gh: green hexagram 
%g--x green dashed-x line
%g green solid line
%g: green dotted line

%doc line solid(-) dotted(:) dashdot(-.) dashed(--)