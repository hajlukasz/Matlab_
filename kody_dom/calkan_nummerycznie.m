clc; clear; close all;
%przyblizamy wykres funkcji do duzej ilosci waskich prostokatow
N = 5
a = rand(1,N)*2-1
dx = 0.01; x = -1:dx:1;
y = polyval(a,x);
C = sum(y)*dx