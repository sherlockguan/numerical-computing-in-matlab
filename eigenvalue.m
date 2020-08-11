
% Matrix A is provided for you.
A = [1 -1 0; 2 5 1; 1 0 3];
% Now use eig(A) to find the eigenvalues and eigenvector
[V,D] = eig(A)
% Now extract the three eigenvectors of A 
% and define them as three separate column vectors v1, v2, v3
v1 = V(:,1)
v2 = V(:,2)
v3 = V(:,3)
% Now extract the three correspondong eigenvalues of A 
% and define them as three separate variables e1, e2, e3. 
% These should be numbered so that A*v1 = e1*v1, etc.
e1 = D(1,1)
e2 = D(2,2)
e3 = D(3,3)