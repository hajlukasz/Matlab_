function [x,i] = newton(a,b,e)
% a, b przedzial
% e precyzja
% zwraca miejsce zerowe i ilosc wykonanych obiegow


funkcja = @(x) x^3-4*x^2-13; 
fa = funkcja(a);
i = 1;

while 1
    dfa = (funkcja(a+e)-fa)/e;
    
    if dfa == 0
        error( 'Pochodna rowna zero.' )
    end
    
    x = a - fa/dfa;
    
    fx = funkcja(x);
     b
    if abs(fx) < e
       break;
    else
        a = x;
        fa = fx;
    end
    
    i = i+1;
    
end

end
