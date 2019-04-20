function [x,y] = elipsa(a,b)

alfa = 0:0.1:2*pi;
  x = a*cos(alfa);
  y = b*sin(alfa);
  plot(x,y)
end