function[ ExpSeq ] = Q1c( k , x0 , delta , nmax )
%Exponential sequence, x_(n+1) = k*exp(-(x_n)), which uses iteration as an approximation method to find the unique solution of x = k*e^(-x).

%Initial conditions which are needed to begin the sequence where the
%sequence begins with n = 1 and x = x0 which is to be defined for the function
n = 1;
x = x0;
step = 10e-14;

%A loop which enables the iterative method as it checks the distance between x_n and x_n-1 >= delta which is to be specified, is met alongside the condition, n < nmax where nmax is also to be specified. This means it must satisfy both conditions at any given value within the sequence for the
%sequence to continue. At the very least, the sequence will stop when n =
%nmax, meaning it cannot continue for an unspecified length.
while(n < nmax) && (step >= delta);
    x = [x k.*exp(-x(n))];
    n = n+1;
    step = abs(x(n)-x(n-1));
end

%The single value x_n being returned as the output
ExpSeq = x(end);

%A plot of the exponential sequence, x_n = k*e^(-x_(n-1)) to demonstrate its
%convergence to a spefic value for a specific case of the inputs.
figure(2)
clf(2)
subplot(1,2,1)
plot( x, 'x' )
xlabel('i'), ylabel('x_{i}')
title(['ExpFunc = ', num2str(ExpSeq)]);

%A loglog plot to demonstrate the changing distance between each step from
%x_n to x_n+1. This is done as it slows down the change in a way that makes
%the trend more transparent.
subplot(1,2,2)
loglog( abs(diff(x)), 'x')
xlabel('i'), ylabel('|x_{i}-x_{i-1}|')
title( [num2str(n-1), ' steps using a loglog plot'])