
% Approximate the value of  using a rational representation of the quantity pi.
% The mathematical quantity  is not a rational number, but the quantity pi that approximates it is a rational number since all floating-point numbers are rational.
% Find the rational representation of pi. 
%% from doc rat
format rat
pi
rat(pi)



% Specify a tolerance for additional accuracy in the approximation. 
R = rat(pi,1e-7)
% The resulting approximation, 104348/33215, agrees with pi to 9 decimals.




%% page 68
[n,d] = rat(0.3333,1e-6) % 10^(-6) tolerance => 3333/1000

[n,d] = rat(0.3333,1e-3) % 10^(-3) tolerance => 1/3  (0.333)
%% without specify a tolerence parameter, tolerence set to 1e-5 default
