x = linspace( 0, 10, 100 ); t = k*exp(-x);
k = 1;
figure(1);
clf(1);
%Plot of the functions y = x and y = ke^(-x) where k = 1 in this case to
%show that the two functions intersect once at a real positive value of x.
plot ( x, x, '.' ), hold on, plot ( x, t )
grid
xlabel (' x '), ylabel( 'y' )
title (' Illustration of the two functions intersecting at a unique solution when k = 1 ')
legend (' y = x ', ' y = e^{-x} ', 'Location', 'BestOutside' )