R = 1e3;
L = 1e-2;
C = 1e-6;

f = logspace(0,5,100); w=2*pi*f; s=j*w
K =(L*s+R)./(R*L*C*s.^2+L*s+R);

figure(1);
subplot(2,1,1)
semilogx(f,abs(K),'b-'); grid on; title('modul'); hold on;

subplot(2,1,2)
semilogx(f,angle(K),'r-'); grid on; title('faza'); hold on;