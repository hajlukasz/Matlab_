function y = poch_wiel(a)
a(:).'
n = length(a) -1 %stopien wielomianu

y = (n:-1:1).*a(1:end-1);