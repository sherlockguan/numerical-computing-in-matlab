%subfunction



% math function
Z = 2+3i;

Y = imag(Z)

% doc exp 
%doc imag
% doc conj
%% doc rat
[numerator,denominator] = rat(0.3333333333)
[n,d] = rat(0.353535) % 10086/28529
% when we use rund : to clean up useless float
A  = [1,3,2;-1,2,1;4,2,1]
B  = A*inv(A)
round(B)

% ceil: round up
ceil(-1.2)
floor(1.2)
round([1.25,1.5,1.75]) % round up or down according to situations


fix([1.25,1.5,1.75])
floor([1.25,1.5,1.75])

z = 2.3 - 5.2*i
ceil(z)
real(z)
