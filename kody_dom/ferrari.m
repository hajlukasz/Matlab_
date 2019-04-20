function x = ferrari(a)

a(:).';

if length(a) ~= 5; 
    fprintf('zly wektor wejsciowy')
     %jak tu przerwac program
end


if a(1) ~= 1                %wspolczynnik przy najwyzszej potedze wielomianu musi byc rowny 1          
    a = a/a(1);
end


a3 = a(2);
a2 = a(3);                %zeby dobrze bylo przelozyc na wzory z wykladu
a1 = a(4);
a0 = a(5);

b = [1, -a2/2, (a3*a1-4*a0)/4, (4*a2*a0-a3^2*a0-a1^2)/8]; %zamieniamy 4stopnia na 3stopnia ze zmienna k i szulamy miejsc zderowych
z = roots(b);

k = z(3);   %z rowan wiemy ze ten wspolczynnik musi byc rzeczywisty wiec musze znalesc rzeczywisty
% for n=1:3
%     if imag(z(n)) == 0;
%         k = z(n);
%         break
%     end
% end   
  

p = sqrt(2*k+a3^2/4-a2);
q = (k*a3-a1) / (2*p);



x_1 = [1, a3/2 + p, k + q];
x_2 = [1, a3/2 - p, k - q];

x = [roots(x_1), roots(x_2)]
y = roots(a)

end
