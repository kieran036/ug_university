 %Investigating the specific case of function Q3ap1 when k= 0.3, delta =
 %10^-14 nmax = 1000 as 0 <= x0 <= 10 which is investigated through the
 %plot of the sequence and its loglog plot.
for x0 = -1:0.01:10
    Q3ai( 0.3, x0, 1e-14 , 1000 );
    title( ['x_0 = ' num2str(x0)] )
    pause (0.000005)
end

%Varying the output of x0 to any value gives the same root of the equation, 1.7813 (to 4dp)
%x = k*e^(-x), whereas Q2c's root only gave the first root, 0.4894 (to 4dp) if x0
%<= 1.7813 (to 4dp)
%The graph changes as x0 changes but when it is published it only shows the
%final plot.