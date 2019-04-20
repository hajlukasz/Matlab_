clear; clc;

 funkcja = @(x) x^3-4*x^2-13;   %badana funkcja
 a = -50; b = 5;     %przedzial
 precision = 0.0001;  %precyzja
    
 %if funkcja(a)*funkcja(b) > 0; fprintf('bledny przedzial!!!'); end
 %nie wiem czy potrzebne w tej metodzie ^^

 
 new_value = funkcja(a); %tylko na poczatek mi jest potrzebne
 i = 0;
 
 while abs(new_value) > precision
    
    if i>6400; break; end
    i = i+1;
    
    c = (a+b)/2; d =(b-a)/2;
    
    fa = funkcja(a);
    fb = funkcja(b);
    fc = funkcja(c);
 
    k = (fc-fa)/(fb-fc);
    x1 = c + d*log((fc-fa)/(k*fc-fa))/log(k);
    new_value = funkcja(x1);
    
        x2 = a;
    if abs(x1-b)<abs(x1-a) && abs(x1-b)<abs(x1-c)
        x2 = b;
    elseif abs(x1-c)<abs(x1-a) && abs(x1-c)<abs(x1-b)
        x2 = c;
    end
    
    a = x1;
    b = x2;    
    
end

format short
roots([1,-4,0,-13]).'
x1
i
