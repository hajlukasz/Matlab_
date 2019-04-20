function x = pierwiastek_zespolony(c,n)

%c liczba zespolona do spierwiastkowania
%n stopien pierwiastka
%x wektor zawierajacy wartosci pierwiaastka
k = 0:n-1;
modul = abs(c);
faza = angle(c);
x(k+1) = modul^(1/n)*exp(j*(2*pi*k+faza)/n);


end