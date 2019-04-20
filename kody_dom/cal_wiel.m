function y = cal_wiel(a,p)
% a - weltpr wsp[olczynnikow wielomianu
% p - stala calkowania
a(:).'

n = length(a) -1 %stopien wielomianu

y = [1./(n+1:-1:1).*a(1:end),p];