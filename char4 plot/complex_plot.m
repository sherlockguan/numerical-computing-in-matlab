% %https://www.maths.unsw.edu.au/sites/default/files/MatlabSelfPaced/lesson10/MatlabLesson10_Complex.html
% 
% Plot the complex curve z = exp(i* t) for t in [-4, 4]. What should the curve look like?
% % Answer: 
% t = linspace(-4,4,401);
% % % z = exp(complex(0,t)); not working in matlab2018b
% z = exp(i*t);
% 
% plot(z);
% axis([-2 2 -2 2]);
% % The plot looks like an ellipse, but should be a circle with centre
% % the origin and radius 1, as |z| = 1 for all real t. To get a plot 
% % that looks like a circle, you need to make the axes equal. 
% 
% 
z1 = 3 + 2*i;
% plot(real(z1), imag(z1), '*');
hold on
plot(z1, 'm-o')
hold on
plot(z1*i,'g-x')


axis([-5 5 -5 5])
grid on


% z2 = [3+2i, -2+1i, -2-1i, 1-2i];
% plot(z2,'*');
% axis([-4 4 -4 4])
% grid on
% xlabel('real part')
% ylabel('imaginary part')
% title('complex number plot')
% gtext(["3+2i"; "-2+1i"; "-2-1i"; "1-2i"])