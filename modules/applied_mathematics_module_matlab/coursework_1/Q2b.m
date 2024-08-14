%Plots of the three functions with 3 different values of k each
%representing the different cases of two real positive solutions, one real positive solution and no real positive solutions
x = linspace( 0, 100, 10000 );
figure(3)
clf(3)

%Plot for a possible value of k, where k = 0.3 that satisfies the exponential function
%having two real positive solutions.
subplot( 3, 1, 1 )
plot( x, x, '.', x , 0.3*exp(x) )
axis ([0 10 0 10])
xlabel('x'), ylabel( 'y' )
title( 'Two solutions in x >= 0 if 0 <= k < k* = (1/e) for functions y = x and y = ke^{-x}' );
legend (' y = x ', ' y = 0.3e^{x} ', 'Location', 'BestOutside' )

%Plot for the value of k, k*= 1/e that satisfies the exponential function
%having one real positive solution.
subplot( 3, 1, 2 )
plot( x, x, '.' ), hold on, plot( x , (1/(exp(1))*exp(x) ))
axis ([0 10 0 10])
xlabel('x'), ylabel( 'y' )
title(' A unique solution in x >= 0 if k = k* = (1/e) for functions y = x and y = ke^{-x}');
legend (' y = x ', ' y = (1/e)*e^{x} ', 'Location', 'BestOutside' )

%Plot for a possible value of k, k = 0.4 that satisfies the exponential function
%having no real positive solutions.
subplot( 3, 1, 3 )
plot( x, x, '.' ), hold on, plot( x , 0.4*exp(x) )
axis ([0 10 0 10])
xlabel( 'x' ), ylabel( 'y' )
title( 'No solutions in x >= 0 if k > k* = (1/e) for functions y = x and y = ke^{-x}' );
legend (' y = x ', ' y = 0.4e^{x} ', 'Location', 'BestOutside' )