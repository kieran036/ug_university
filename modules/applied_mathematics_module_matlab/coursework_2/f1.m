function f1 = f1(t, x, a, b, A, w)
f1 = zeros(2,1);
f1(1) = a + (x(1)^2)*x(2) - (b + 1)*x(1) + A*cos(w*t);
f1(2) = b*x(1) - (x(1)^2)*x(2);
end
%The system of differential equations assigned to a vector%