%Investigation of the Logarithmic sequence x_(n+1) = ln(|x|/k) when k = 0.5

for k = 0:0.001:0.5
    Q3ai( k , 1 , 10e-14 , 1000 );
    title( ['k = ' num2str(k)] )
    pause (0.001)
end

Q3ai( 0.5 , 1 , 10e-14 , 1000 )
pause( 3 )
%Up to k ~ 0.37 the LogarithFunc sequence was steadily decreasing. At k =
%0.5, it returned the solution to be -0.1339 since we were required to use the absolute
%value of x in the function. Using the absolute value of x introduces
%another solution so the function converged to this solution, -0.3517 (to
%4dp)

for k = 0.5:0.001:1
    Q3ai( k , 1 , 10e-14 , 1000 );
    title( ['k = ' num2str(x0)] )
    pause (0.001)
end