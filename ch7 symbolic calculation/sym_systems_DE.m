% dy/dt = z   dz/dt = -y
syms y(t) z(t)
eqns = [diff(y,t) ==z, diff(z,t) == -y];
sol = dsolve(eqns);
%Access the solutions by addressing the elements of the structure.
soly = sol.y
solz = sol.z

%% another way
syms y(t) z(t)
eqns = [diff(y,t)==z, diff(z,t)==-y];
[ySol(t) zSol(t)] = dsolve(eqns)

%If dsolve cannot solve your equation, 
%then try solving the equation numerically