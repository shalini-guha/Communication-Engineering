clf
clc
clear all
t=0:0.1:2;
vm=input('Enter the value of vm')
fm=input('Enter the value of fm')
m=vm*sin(2*pi*fm*t);
subplot(2,2,1)
plot(t,m,'r')
title('Sine wave')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
subplot(2,2,2)
stem(t,m)
title('Sine wave')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
m=vm*cos(2*pi*fm*t);
subplot(2,2,3)
plot(t,m,'r')
title('Cosine wave')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
subplot(2,2,4)
stem(t,m)
title('Cosine wave')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
