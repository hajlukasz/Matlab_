clear; clc;

a = -100;
b = 100;        %przedzial

w = ones(1,6).*rand(1,6)*5-4; %generuje wielomian

N = 10

D = (abs(a)+abs(b))/(2^N) %szerokosc przedzialu koncowego

 value1 = polyval(w,a);
 value2 = polyval(w,b);
    
    if value1 == 0
        x0 = a;
        fprintf('miejsce zerowe to a');
    elseif value2 == 0
        x0 = b;
        fprintf('miejsce zerowe to b');
    end
    
   
for n = 1:N
    
    value1 = polyval(w,a);
    value2 = polyval(w,b);
    
    x1 = (a+b)/2;
    new_value = polyval(w,x1);
    
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
end

format short
roots(w).'
a
b
  
    
        
      
    
 