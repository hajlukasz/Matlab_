function x = calkaw(a)
%a wwektor wspolczynnikow wielomianu zazynajac od najwyzszej potegi
a(:).'
n = length(a) - 1 %stopien wielomianu

x = [1./(n+1:-1:1).*a(1:end), 0]
end