% Firstly generate a random 100x100 matrix A of numbers randomly chosen between -10 and 10.
% Note that rand() generates random numbers between 0 and 1, so we've modified the definition of A
% by first subtracting 0.5 from each entry to get randomly generated entries between -0.5 and 0.5,
% then multiplying by 20 so that the numbers lie between -10 and 10.

A = (rand(100)-0.5)*20;
% Now calculate the symmetric part of the matrix A. Call this matrix B
B = 0.5*(A+A')
% Now calculate the eigenvalues and eigenvectors of A using eig(). Store them in the matrices V1 and D1
[V1,D1] = eig(A);
% Now calculate the eigenvalues and eigenvectors of B using eig(). Store them in the matrices V2 and D2
[V2,D2] = eig(B);
% We will now create a scatter plot of the eigenvalues of A and B from the script you have just completed.
% If you have filled it in correctly, then you should see that the eigenvalues of A are scattered across the complex plane,
% while the eigenvalues of B are all on the real line.
figure(1)
hold on
d1 = diag(D1);
plot(real(d1),imag(d1),'*')
xlabel('Real part')
ylabel('Imaginary part')
xlim([-max(abs(real(d1))), max(abs(real(d1)))])
ylim([-max(abs(imag(d1))), max(abs(imag(d1)))])
title('Eigenvalues of A')
set(gca,'FontSize', 18);
axis square
%
figure(2)
hold on
d2 = diag(D2);
plot(real(d2),imag(d2),'*')
xlabel('Real part')
ylabel('Imaginary part')
xlim([-max(abs(real(d2))), max(abs(real(d2)))])
ylim([-1, 1])
title('Eigenvalues of B')
set(gca,'FontSize', 18);
axis square