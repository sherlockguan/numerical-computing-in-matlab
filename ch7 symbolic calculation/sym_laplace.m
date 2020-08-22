% page 235
% laplace ilaplace
syms t s 
f = -1.25+3.5*t*exp(-2*t)+1.25*exp(-2*t);
F = laplace(f,t,s) % get the tranfer function of f(t)

% for better viewing experience I prefer the first below
sol = simplify(F)
pretty(sol)

% or 
F2 = laplace(-1.25+3.5*t*exp(-2*t)+1.25*exp(-2*t))
simplify(F2)


%% INVERSE LAPLACE OF ABOVE
syms t s
F3 = (s - 5)/(s*(s + 2)^2)
ans = ilaplace(F3) % thus we get f = -1.25+3.5*t*exp(-2*t)+1.25*exp(-2*t)

%% page 238
syms  b t
f = b*t
ans = laplace(f) % tranfer function