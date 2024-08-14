%Q1b%
function [x, y, t] = Eulersol(a, b, N, dt)
t = 0:dt:(N*dt);
x = zeros(1, length(t)); y = zeros(1, length(t)); x(1) = 0; y(1) = 0;
    %Empty vectors to store outputs along with initial conditions%
for i = 1:length(t) - 1;
    x(i + 1) = x(i) + dt*(a + y(i) - (b + 1)*x(i));
    y(i + 1) = y(i) + dt*(b*x(i) - y(i));
    %Loop to generate iterative values for x and y from 1 to t-1, hence the
    %Euler approximation method%
end
disp (x)
disp (y)
disp (t)
%Returning x, y, and t values%
end