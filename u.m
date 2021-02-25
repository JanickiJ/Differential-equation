function y = u(wynik,n,x)
a=shift(n,x);
for i = 1:n
    a = a + e(i-1,n,x)*wynik(i);
y=a;
end

