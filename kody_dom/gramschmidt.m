function [W,U] = gramschmidt
%
%
%
	V = [1,1,3;-3,2,5;2,7,3]

	U =  V(1,:);


	W = U(1,:)/norma(U(1,:));
	for k = 2:length(V(1,:));
		pn = 0;
		for n = 1:(k-1)
			pn = pn + proj(V(k,:), U(n,:));
		end
		
		U = [U; V(k,:) - pn];
		W = [W; U(k,:)/norma(U(k,:))];
		pn = 0;
	end
return

function u = skalar(a,b)
%
%
%
u = sum(a.*b);
return

function m = norma(a)
%
%
%
m = skalar(a,a)^(1/2);
return

function d = proj(a,b)
%
%
%
d = b*skalar(a,b)/(norma(b)^2);
return
