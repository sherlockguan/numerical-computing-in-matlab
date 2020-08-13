%%% filename matrix.m
% page 59
function [J] = matrix(s)
J(1,1) = s(1)^2 + s(2)^2;
J(1,2) = s(1)/s(2);
J(2,1) = abs(s(1))+ abs(s(2));
J(2,2) = sqrt(s(1)) + sqrt(s(2));
end


% matrix([1,2])
