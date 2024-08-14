 %Investigating the specific case of sequence, Q1c when x0 = 1, delta =
 %10^-14 nmax = 1000 as 2.65 <= k <= 2.75
 
 %This for loop changes the graph of the function Q1c with the initial conditions against the
 %independent variable k
for k = 2.65:0.001:2.75
    Q1c( k, 1, 1e-14 , 1000 );
    title( ['k = ' num2str(k)]) 
    pause (0.1)
end
%From k = 2.65 from ~ k = 2.716 the ExpFunc sequence plot converges to a value which
%changes for each plot but for beyond this point the ExpFunc sequence
%diverges. While this occurs on the ExpFunc plot, the loglog plot shows a
%slower rapid decrease of the distance between x_n and x_(n-1) for this
%interval, proving convergence but after this first interval, the loglog
%plot rapidly increases, showing a divergence from the solution of the
%sequence.
%The graph changes as k changes but when it is published it only shows the
%final plot.