clear; clc;

%w = ones(1,6).*rand(1,6)*5-3; %generuje wielomian

 %value1 = polyval(w,a);
 %value2 = polyval(w,b);
 
 funkcja = @(x) x^3-4*x^2-13;   %badana funkcja
 a = -50; b = 5;     %przedzial
 precision = 0.0001;  %precyzja
    
 if funkcja(a)*funkcja(b) > 0; fprintf('bledny przedzial!!!'); end
 
 x1 = a - (funkcja(a)*(b-a))/(funkcja(b)-funkcja(a));
 new_value = x1;
 
 i = 0;
 while abs(new_value) > precision
    
    if i>640000; break; end
    i = i+1;
    
    x1 = a - (funkcja(a)*(b-a))/(funkcja(b)-funkcja(a));
    new_value = funkcja(x1);
    
    a = b;
    b = x1;
    
end

format short
roots([1,-4,0,-13]).'
x1
i
