clear; clc;

%w = ones(1,6).*rand(1,6)*5-3; %generuje wielomian

 %value1 = polyval(w,a);
 %value2 = polyval(w,b);
 
 funkcja = @(x) x^3-4*x^2-13;   %badana funkcja
 a = -50; b = 50;     %przedzial
 precision = 0.000001
 value1 = funkcja(a);
 value2 = funkcja(b);
    
 if value1*value2 > 0; fprintf('bledny przedzial'); end
 
 x1 = a - (funkcja(a)*(b-a))/(funkcja(b)-funkcja(a));
 new_value = x1
 
 while abs(new_value) > precision
    
   % if i>555; break; end 
   % i = i+1;
    
    value1 = funkcja(a);
    value2 = funkcja(b);
    
    x1 = a - (funkcja(a)*(b-a))/(funkcja(b)-funkcja(a));
    new_value = funkcja(x1);
    
    if new_value == 0
        x0 = a;
        break;
    elseif value1*new_value<0
        a = a;
        b = x1; 
    elseif value2*new_value<0
        a = x1;
        b = b;
    else
        fprintf('mozliwe ze w tym przedziale nie bedzie miejsca zerowego');
        break
    end
    i = i+1;
end

format short
roots([1,-4,0,-13]).'
x1
