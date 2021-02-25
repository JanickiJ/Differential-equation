function mes(n,ro)
macierz = zeros(n,n);
wektor_pr = zeros(n,1);

for i = 1:n
    for j = 1:n
        macierz(i,j) = B(i-1,j-1,n);
    end
end
for i = 1:n
    wektor_pr(i,1) = Lprim(i-1,n,ro);
end

wynik = macierz\wektor_pr;
punkty =[0:3/n:3];
wartosci = zeros(length(punkty),1);
for i = 1:length(punkty)
    wartosci(i,1) = u(wynik,n,punkty(i));
end
% rysowanie wyniku
plot(punkty, wartosci);
end