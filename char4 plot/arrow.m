% % Example:  DOWNLOAD
% % For 3D vector 
% p0 = [1 2 3]; 
% p1 = [4 5 6]; 
% vectarrow(p0,p1)
% 
% % For 2D vector 
% p0 = [1 2]; 
% p1 = [4 5]; 
% vectarrow(p0,p1)


[x,y] = meshgrid(0:0.2:2,0:0.2:2);
u = cos(x).*y;
v = sin(x).*y;

figure
quiver(x,y,u,v)