%Q1c uses iteration as an approximation to find the solution to x = k*e^(-x), however, boundaries have been put on this approximation. These
%boundaries are that the distance between each step from
%x_n to x_n+1 needed to be greater than or equal to delta and this would
%need to be satisfied by the time n = 1000 and if it does not, the sequence ends at x_n.

%Specific case of the exponential sequence, Q1c when k = 0.5, x0 = 1, delta = 10^-14 and
%nmax = 1000.
Q1c( 0.5 , 1 , 10^-14 , 1000 )

%A plot of the exponential sequence x_n = k*e^(-x_(n-1)) and its loglog plot at its specific inputs as mentioned above to demonstrate its
%convergence to a spefic value for a specific case of the inputs. In this
%case the seuquence converges to 0.35173 (to 5dp) and the loglog plot shows
%that it has taken only 32 steps for the sequence to converge according to
%the criteria that was set.