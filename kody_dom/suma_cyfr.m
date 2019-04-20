clc; clear;

liczba = 123
liczbaspr = liczba;
rzad = 0;

while liczbaspr>=1;
    liczbaspr = liczbaspr/10;
    rzad = rzad + 1;
end

cyfry = zeros(1,rzad) %wektor cyfr na pierwszy miejscu najwzsza dziesietnie cyfra

for i=1:rzad
    
    reszta = 0;
    for k=1:rzad;
       reszta = reszta + cyfry(k)*10^(rzad-k)
    end
    
    x = (liczba - reszta)/(10^(rzad-i))            
    x = floor(x)
    cyfry(i) = x
end

cyfry
sum(cyfry)
