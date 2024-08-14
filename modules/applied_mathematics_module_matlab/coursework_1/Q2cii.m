 %Investigating the specific case of function Q2c when k= 0.3, delta =
 %10^-14 nmax = 1000 as 0 <= x0 <= 2.5 which is investigated through the
 %plot of the sequence and its loglog plot.
for x0 = -1:0.01:2.5
    Q2c( 0.3, x0, 1e-14 , 1000 );
    title( ['x_{0} = ' num2str(x0)] )
    pause (0.05)
end
% -1 <= x0 <= 2.5 was chosen because the function was to have a real
% positive solution for x>=0 and 2.5 was chosen because having investigated
% from -10 <= x0 <= 10, the trend was diverged significantly by the time x0 = 1.7813 (to 4dp)

%Varying the output of x0 from any value less than the second solution of
%the sequence did not change the output which was returned which was 0.4894 (to 4dp), however, if the sequence began from any value of x0 beyond the root, 1.7813 (to 4dp), the sequence diverged and displayed 'Inf'. 

%The graph changes as x0 changes but when it is published it only shows the
%final plot.