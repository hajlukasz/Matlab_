function x = pochodnaw(a)
% a - wewktor wsp�czynnik�w wielomianu
%w ktorym wspolczynnik przy najwyzszej potedze jest na poczatku
a = a(:).' 
n = length(a) - 1
 x = (n:-1:1).*a(1:end-1)
end