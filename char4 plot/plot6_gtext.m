% Create a simple line plot and use gtext to 
% add text to the figure using the mouse.
% add legend on specific position manually by mouse

plot(1:10)
hold on;
plot(2:10)

gtext(["first Plot";"second plot"]) % double quote!!



% add legend on specific position by set (x,y)
%text(x,y,'contents')