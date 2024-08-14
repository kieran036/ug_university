function[ LogarithFunc ] = Q3ai( k , x0 , delta , nmax )
%Logarithmic sequence x_(n+1) = ln(|x_(n)|/k)

%Initial conditions which are needed to begin the sequence where the
%sequence begins with n = 1 and x( n ) = x0 which is to be defined for the function
n = 1;
x( n ) = x0;
step = 1e15;

%A loop which enables the iterative method as it checks the distance between x_n and x_n-1 >= delta which is to be specified, is met alongside the condition, n < nmax where nmax is also to be specified. This means it must satisfy both conditions at any given value within the sequence for the
%sequence to continue. At the very least, the sequence will stop when n =
%nmax, meaning it cannot continue for an unspecified length.
while(n < nmax) && (step >= delta);
    n = n+1;
    x( n ) = log((( abs ( x(n-1) ))/ k ));
    step = abs( x(n) - x(n-1) );
end

%The single value x_n being returned as the output
LogarithFunc = x(end);

figure(4)
clf(4)

%A plot of the logarithmc function x_(n+1) = ln(|x|/k) to demonstrate its
%convergence to a spefic value for a specific case of the inputs.
subplot(1,2,1)
plot( x )
xlabel('i'), ylabel('x_i')
title( ['LogarithFunc = ', num2str(LogarithFunc)] );

%A loglog plot to demostrate the changing distance between each step from
%x_n to x_n+1. This is done as it slows down the change in a way that makes
%the trend more transparent.
subplot(1,2,2)
loglog( abs(diff(x)) )
xlabel('i'), ylabel('|x_{i}-x_{i-1}|')
title( [num2str(n-1), ' steps using a loglog plot'] )