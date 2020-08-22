syms k x

S1 = symsum(k^2, k, 0, 10) % calculate the sum of k^2 when k is in[0,10]
S4 = symsum(k^2,k, 0,1)
S5 = symsum(k^2,k, 0,n)
S2 = symsum(1/k^2, k, 1, Inf)
S3 = symsum(x^k/factorial(k), k, 0, Inf)



% alternative
S1 = symsum(k^2, k, [0 10])
S2 = symsum(1/k^2, k, [1; Inf])
S3 = symsum(x^k/factorial(k), k, [0 Inf])

%% more on doc sum--on vector[1:10] symsum ect
