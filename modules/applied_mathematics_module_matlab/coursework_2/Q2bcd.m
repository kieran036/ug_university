%Q2b%
[a,b,w] = idscript(4262663);


%Q2c%
i = 1; t0 = 500; tmax = 1000;
clf 
for A = 0: 0.1 : 1
    figure(i)
    solplot(a, b, A, w, t0, tmax)
    i=i+1;
end


%Q2d%
%As the value of t tends to tmax the plot of y against x overlaps onto ts
%self. This is most likely due to the exponential component of the solution
%tending toward zero , which leaves the periodicity of the trigonometric
%functions. This explains why the plot as t tends to tmax appear as though
%the solutions of y against x overlaps on itself after a cycle. as A tends
%to 1 the plot of y against x appears more defined, meaning there is more
%exact overlays of one cycle of the solutions onto another. Furthermore,
%as A tends to 1, from the plots, the structure of the solutions appears
%to follow a more clear path, where from the plots when A was between 0 and
%0.3 the structure was less clear.%