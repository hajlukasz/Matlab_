function x = cardano(a)
%podajemy wktor wspolczynnikow wielomianu 3 stopnia jako a (4elewnetowy)
%dostajemy wektor miejsc zerowych x

a(:).';

if length(a) ~= 4; 
    fprintf('zly wektor wejsciowy')
     %jak tu przerwac program
end


if a(1) ~= 1                %wspolczynnik przy najwyzszej potedze wielomianu musi byc rowny 1          
    a = a/a(1);
end

a2 = a(2);                %zeby dobrze bylo przelozyc na wzory z wykladu
a1 = a(3);
a0 = a(4);

p = (3*a1-a2^2)/9;
q = a2^3/27 - a1*a2/6 + a0/2;
d = q^2 + p^3

naiks = @(y) y-(a(2)/3);  %funkcja wewnetrzna

if d >= 0
    u = nthroot(-q+sqrt(d),3); %wyrzuca pierwiasrek rzeczywisty, przydaje sie bo ^1/3 daje zespolony i pieprzy oblicznia
    v = nthroot(-q-sqrt(d),3);
    y1 = u + v; 
    y2 = -0.5*(u+v) + j*(sqrt(3)/2)*(u-v); 
    y3 = -0.5*(u+v) - j*(sqrt(3)/2)*(u-v); 
else
    fi = acos(-q/sqrt(-p^3))
    y1 = 2* sqrt(-p) * cos ((fi)/3);
    y2 = 2* sqrt(-p) * cos ((fi + 2*pi)/3);
    y3 = 2* sqrt(-p) * cos ((fi + 4*pi)/3);
end

x1 = naiks(y1);
x2 = naiks(y2);
x3 = naiks(y3);

x = [x1,x2,x3];
end

