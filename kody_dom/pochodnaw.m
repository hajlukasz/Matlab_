function x = pochodnaw(a)
% a - wewktor wspó³czynników wielomianu
%w ktorym wspolczynnik przy najwyzszej potedze jest na poczatku
a = a(:).' 
n = length(a) - 1
 x = (n:-1:1).*a(1:end-1)
end