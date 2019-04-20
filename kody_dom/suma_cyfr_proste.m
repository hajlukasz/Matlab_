function suma = suma_cyfr_proste(x)
suma=0;

while(x>=1)
suma=suma+mod(x,10); %znajduje ostatnia cyfre
x=floor(x/10); %usuwa ostatnia cyfre
end