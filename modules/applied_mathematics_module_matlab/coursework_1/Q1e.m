 %Investigating the specific case of sequence, Q1c when x0 = 1, delta =
 %10^-14 and nmax = 1000 as 0 <= k < 2.65 which is investigated through the
 %plot of the solution of x = ke^{-x} as a function of k for 0<= k < 2.65
 %where the independent variable k is changing from 0 to 2.65 at multiples of 0.01
 
 %Initial condition of n and defining the variable k by letting it equal to
 %x and defining this. 
 n = 1;
 x = 0:0.01:2.65;
 y = zeros(numel(x), 1);
 
 for k = 0:0.01:2.65
     y( n ) = Q1c( k , 1 , 10^-14 , 1000);
     n = n + 1;
 end
 
 clf
 plot ( x , y , '.')
 title('Plot of the solution of x = ke^{-x} as a function of k for 0<= k < 2.65')