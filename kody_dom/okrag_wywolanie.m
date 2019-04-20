clc; clear;

[x,y] = okrag(2,0,0)
[a,b] = elipsa(3,1) 

figure(1); grid on; axis equal;

    subplot(2,2,1)  
      plot(x,y,'r-') ; grid on;
      axis equal;
    subplot(2,2,[2,4])
      plot(a,b,'b-'); grid on;
      
  

  
  
  