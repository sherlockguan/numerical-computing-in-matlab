%%% filename cal_sin_cos.m
% y = rsin(theta)
% x = rcos(theta)
function[x,y] = cal_sin_cos(r,theta)
x = r*cos(theta);
y = r*sin(theta);
end


%% % command window 
% 
% [x,y]=cal_sin_cos(10,3*pi/5)