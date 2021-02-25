function y = B(i,j,n)
h=3/n;
x1 = 1/sqrt(3);
x2 = -x1;


a = e(i,n,0)*e(j,n,0);
integral = 0;
if i == j
    integral = h*(eprim(i,n,h*x1+i*h)^2 + eprim(i,n,h*x2+i*h)^2);
elseif i+1 == j
    integral = h/2 * (eprim(i,n,x1*h/2 + (2*i+1)*h/2)*eprim(j,n,x1*h/2 + (2*i+1)*h/2) + eprim(i,n,x2*h/2 + (2*i+1)*h/2)*eprim(j,n,x2*h/2 + (2*i+1)*h/2));
elseif j+1 == i
    integral = h/2 * (eprim(i,n,x1*h/2 + (2*j+1)*h/2)*eprim(j,n,x1*h/2 + (2*j+1)*h/2) + eprim(i,n,x2*h/2 + (2*j+1)*h/2)*eprim(j,n,x2*h/2 + (2*j+1)*h/2));

end

y = a - integral;
end

