clc; clear;

p = 2;
t = 1; % =1 to jest pierwsze, rowne 0 to jest zlozone
i = 2;
while p>=i %powtarza kiedy warunek jest prawdziwy
    
  if i>=p;
   t=1;
   break
  
    if rem(p,i) == 0
    t = 0;
    break
    
    else; 
    t = 1;
    i= i+1
    end;
   
  end;
 
    
end;

t
    