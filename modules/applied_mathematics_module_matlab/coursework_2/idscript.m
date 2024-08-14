function [a,b,w] = idscript(studentid)
rng(studentid);
a = 0.4+0.4*rand(1);
b = 3*a;
w = 0.6+0.4*rand(1);
