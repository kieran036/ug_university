%Q1c%
syms x(t) y(t) a b
S = dsolve(diff(x,t) == a + y - (b + 1)*x, diff(y,t) == b*x - y, x(0) == 0, y(0) == 0);
%Finding symbolic solution to the system of equations%


%Q1d%
disp(simplify(S.x))
disp(simplify(S.y))
%Simplifying the expressions found in Q1c%


%Q1e%
solx = simplify(S.x); soly = simplify(S.y);
Mp = 0.5*(- b - 2 + sqrt(b*(b+4))); Mn = 0.5*(- b - 2 - sqrt(b*(b+4)));
Bp = (a*(1+ Mn))/(Mp - Mn); Bn = (a*(1+ Mp))/(Mn - Mp);
ExactX = Bp*exp(Mp*t) + Bn*exp(Mn*t) + a;
disp(simplify(solx-ExactX))
%Displaying the accuracy of the Euler method against the exact solution by
%subtracting solution S from the exact solution found in Q1a which does
%indeed simplify to zero%


%Q1f%
[Ex, Ey, Et] = Eulersol(1, -1, 50, 0.2);
%Since dt=0.2, tmax=10 and tmax=N*dt, this implies that N=50%


%Q1g% 
figure(1); clf(1)
hold on
plot(Et, Ex, 'k:')
title('Comparison of Euler and exact solutions'), xlabel('t'), ylabel('x')
%Plot of the Euler approximation method%

ExactX2 = zeros (1, 50 + 1);
for i = 1:50 + 1
    ExactX2(i) = subs(solx, [t, a, b], [Et(i), 1, -1]);
end
plot (Et, ExactX2, 'k')
%Exact solution plot%
legend ('Euler method solution', 'Exact solution')
hold off
%For the given input values and initial conditions, the Euler approximation
%method provides a good approximation of x if compared against the exact 
%value with a maximum of approximately 0.1 off from the exact value of x.
%This can only be seen for a specific range of t that is used in the plot
%due to the given input values in Q1f. Despite the fact the plot of the
%approximations' extremas are more defined than the exact solution, the
%plot of Euler's method holds a very similar shape to that of the exact
%solution, showing a degree of accuracy to the method of approximation. In
%addition, as t tends to tmax, which in this case is 10, the Euler
%approximations tends closer to the exact values, supporting the prediction
%that for large values of t, the Euler method of approximation will tend
%closer to the exact value of the solution. Furthermore, as dt tends closer
%to zero, Euler's method of approximation tends towards the exact solution
%for x so dt should be made as small as possible for a more accurate
%solution.%