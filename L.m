function y = L(i,n,ro)
x1 = 1/sqrt(3);
x2 = -x1;
h=3/n;

a = 5*e(i,n,0);
integral = h*(e(i,n,h*x1 + i*h)/Er(h*x1 + i*h) + e(i,n,h*x2 + i*h)/Er(h*x2 + i*h));

y = a - ro*integral;

end

