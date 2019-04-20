function [x,y] = okrag(R,a,b)

  alfa = 0:0.1:2*pi
  x = R*cos(alfa) + a
  y = R*sin(alfa) + b
  
end
