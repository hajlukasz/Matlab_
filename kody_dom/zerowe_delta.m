function y = zerowe_delta(a)

a(:).'

if length(a) == 3; 
    delta = a(2)^2 - 4*a(1)*a(3);
    
        if delta < 0; 
            fprintf('delta ujemna bro');
            %y = [0,0]; % jak tu zrobic tak zeby tego nie dawac a zeby nie wyrzucalo jakiegos errora
            
        else
            x1 = (-a(2)+sqrt(delta))/2;
            x2 = (-a(2)-sqrt(delta))/2;
            y = [x1,x2]; 
        end
else
    fprintf('zly wektor wejsciowy')
    y = [0,0]; % jak tu zrobic tak zeby tego nie dawac a zeby nie wyrzucalo jakiegos errora
end
end