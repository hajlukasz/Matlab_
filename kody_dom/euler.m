x = 0:0.01:2*pi;

cose = (exp(i*x)+ exp(-i*x))/2
sine = (exp(i*x)- exp(-i*x))/2*i


subplot(2,2,1)
plot(x,cos(x),'r-')
subplot(2,2,2)
plot(x,sin(x),'r-')
subplot(2,2,3)
plot(x,cose,'r-')
subplot(2,2,4)
plot(x,sine,'r-')
