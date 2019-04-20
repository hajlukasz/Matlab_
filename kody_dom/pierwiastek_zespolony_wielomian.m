function x = pierwiastek_zespolony_wielomian(c,n)

a = [1, zeros(1,n-1), -c];
x = roots(a);

end
