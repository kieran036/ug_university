%Q2a%
function solplot(a, b, A, w, t0, tmax)
sol = ode45(@(t,x) f1(t, x, a, b, A, w), [t0, tmax], [0, 0]);
t = linspace(t0, tmax , 10*(tmax-t0));
x = deval(sol,t);
%ode45 Approximation for the system of differential equations. The ode45
%function has inputs: the function, the range to which the function is
%integrated between, and the initial conditions, respectively.%

clf
hold on
plot(x(1, :), x(2, :), 'k')
%Plot of solutions of y against soltions of x.%
titlestr = ['Solutions to the system of differential equations when a='...
    num2str(a) ', b = ' num2str(b) ', A = ' num2str(A) ' , and w = ' ... 
    num2str(w) ];
title (titlestr)
xlabel ('Solutions of x'), ylabel ('Solutions of y')
end