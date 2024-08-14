%Same plots as the earlier plots but with bespoke axes so that the intersections and skew functions are more clear while the previous sets of plots provide a more general view.
x = linspace( 0, 100, 1000000 );
figure(3)
clf(3)

subplot( 3, 1, 1 )
plot( x, x, 'x', x , 0.3*exp(x) )
axis ([0.2 2.1 0.1 2.2])
xlabel('x'), ylabel( 'y' )
title( 'Two solutions in x >= 0 if 0 <= k < k* = (1/e) for functions y = x and y = ke^{-x}' );
legend (' y = x ', ' y = 0.3e^{x} ', 'Location', 'BestOutside' )

subplot( 3, 1, 2 )
plot( x, x, 'x' ), hold on, plot( x , (1/(exp(1))*exp(x) ))
axis ([0.8 1.2 0.8 1.2])
xlabel('x'), ylabel( 'y' )
title(' A unique solution in x >= 0 if k = k* = (1/e) for functions y = x and y = ke^{-x}');
legend (' y = x ', ' y = (1/e)*e^{x} ', 'Location', 'BestOutside' )

subplot( 3, 1, 3 )
plot( x, x, 'x' ), hold on, plot( x , 0.4*exp(x) )
axis ([0.6 1.4 0.6 1.4])
xlabel( 'x' ), ylabel( 'y' )
title( 'No solutions in x >= 0 if k > k* = (1/e) for functions y = x and y = ke^{-x}' );
legend (' y = x ', ' y = 0.4e^{x} ', 'Location', 'BestOutside' )