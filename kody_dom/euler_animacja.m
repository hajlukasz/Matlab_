clear; clc; 

x = 0:0.01:2*pi;

cose = (exp(i*x)+ exp(-i*x*0.92))/2;
sine = (exp(i*x)- exp(-i*x))/2*i;


figure(1);
subplot(2,2,1)
plot(x,cos(x),'r-'); title('cos obliczony korzystajac z wbudowanej funkcji');
subplot(2,2,2)
plot(x,sin(x),'r-'); title('cos obliczony korzystajac z wbudowanej funkcji');
subplot(2,2,3)
plot(x,cose,'r-'); title('cos obliczony korzystajac z wbudowanej funkcji');
subplot(2,2,4)
plot(x,sine,'r-'); title('cos obliczony korzystajac z wbudowanej funkcji');
pause

figure(1);
subplot(2,2,[1,2,3,4])
plot(x,cos(x),'r-'); title('cos obliczony korzystajac z wbudowanej funkcji'); hold on;
pause
plot(x,cose,'b-'); title('nakladam cos obliczony korzystajac z wzoro eulera')



