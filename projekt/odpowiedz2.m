
function y = odpowiedz2(b0,x,a0)
% do funkcji mozesz wprowadzic lub (b0,x) dla SOI lub (b0,x,a0) dla NOI  
% b0 - wektor wierszowy wspó³czynników b transmitancji(licznik) lub b_ - miejsca zerowe transmitancji
% a0 - wektor wierszowy wspó³czynników a transmitancji(mianownik) lub a_ - bieguny transmitancji
% x - wektor kolejnych wymuszeñ numerycznych 
% podawanie ewentualnycjh warunki pocz¹tkowe jako wektor wierszowy o szerokosci d³. wektora b - 1

switch nargin
    case 0 
        error("Nie poda³eœ potrzebnych danych.")
    case 1
        error("Poda³eœ za ma³o potrzebnych danych.")
    case 2
        %wywolanie funkcji do filtru SOI
        display("Czy chcesz podac warunki poczatkowe [1] nie, [2] tak.")
        spr = input(':')
        if spr == 2
            wb = input('Podaj warunki poczatkowe w formacie "[x(n-1) x(n-2) ...]" ')
            y = odp_skonczona(b0,x,wb);
        else 
            y = odp_skonczona(b0,x);
        end
        
    case 3
        %wywowalnie funkcji do filtru NOI
        display("Czy chcesz podac warunki poczatkowe [1] nie, [2] tak.")
        spr = input(':')
        if spr == 2
            wb = input('Podaj warunki poczatkowe b w formacie "[x(n-1) x(n-2) ...]" ')
            wa = input('Podaj warunki poczatkowe a w formacie "[y(n-1) y(n-2) ...]" ')
            y = odp_nieskonczona(b0,x,a0,wb,wa);
        else 
            y = odp_nieskonczona(b0,x,a0);
        end
       
     otherwise
        error("Poda³eœ za du¿o argumentów wejœciowych.")
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = odp_skonczona(b0,x,wb)

b = b0;
M = length(b);

switch nargin %odpowiednie zastosowanie warunków pocz¹tkowych
    case 2
        bufor = zeros(1,M);
    case 3
        if length(wb) ~= (M-1)
            error("Poda³eœ nie odpowiednio d³ugi wektor warunków poczatkowych. Powinienes podac %d warunkow poczatkowych.",M-1)
        end
        bufor = [0,wb];
    otherwise
        error("-")
 end
       
 for i=1:(length(x)+(M-1)) %g³ówna pêtla korzystajaca z równanania ró¿nicowego
            y(i) = 0;
    
            for k=1:(M-1)
                bufor(k) = bufor(k+1);
            end
    
            if i >= length(x)+1
            bufor(M) = 0;
            else
            bufor(M) = x(i);
            end
    
            for j=1:M
                h =  b(j)*bufor(M+1-j);
                y(i) = y(i) +h;
            end
 end
  
 figure(1)              %wizualizacja
 hold on; grid on;
 stem(x,'ro','fill')
 stem(y,'kd','fill')
 legend('wymuszenie numeryczne','odpowiedŸ na wymuszenie');
 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
function y = odp_nieskonczona(b0,x,a0,wb,wa)
        
        a = a0;
        b = b0;
        if a(1) ~= 1
            a = a/a(1);
        end

        M = length(b);
        N = length(a)-1;

        switch nargin       %odpowiednie zastosowanie warunków pocz¹tkowych
            case 3
                bufor = zeros(1,M);
                bufor_ = zeros(1,N);
            case 5
                if length(wb) ~= (M-1)
                    error("Poda³eœ nie odpowiednio d³ugi wektor warunków poczatkowych b. Powinienes podac %d warunkow poczatkowych.",M-1)
                end
                
                if length(wa) ~= N
                    error("Poda³eœ nie odpowiednio d³ugi wektor warunków poczatkowych. Powinienes podac %d warunkow poczatkowych.",N)
                end
                
                bufor = [0,wb];
                bufor_ = [0,wa];
                
            otherwise
                error("-")
        end
         
        
        for i =1:length(x)      %petla do czesci ze wspolczynnikami b transmitancji
            y_(i) = 0;
    
            for k=1:(M-1)
                bufor(k) = bufor(k+1);
            end
            
            bufor(M) = x(i);
    
            for j=1:M
                suma =  b(j)*bufor(M+1-j);
                y_(i) = y_(i) +suma;
            end
        end
        for i =1:length(x)      %petla do czesci ze wspolczynnikami a transmitancji i stowrzeniem ostatecznego wyjscia
            y__(i) = 0;
            
            for k=1:(N-1)
                bufor_(k) = bufor_(k+1);
            end
    
            if i == 1
                bufor_(N) = bufor_(N);
            else
                bufor_(N) = y(i-1);
            end
    
            for j=2:(N+1)
                roznica =  a(j)*bufor_(N+2-j);
                y__(i) = y__(i) +roznica;
            end
    
            y(i) = y_(i) - y__(i);
        end
        
        figure(2)               %wizualizacja
        hold on; grid on;
        stem(x,'ro','fill')
        stem(y,'kd','fill')
        legend('wymuszenie numeryczne','odpowiedŸ na wymuszenie');
end      

