clear all;
close all;
clc;
t=0:0.001:1;
am=input('Amplitude of the Modulated Signal');
fm=input('Frequency of the Modulated signal');
ac=input('Amplitude of the carrier signal');
fc=input('Frequency of the carrier signal');
xt=am*cos(2*pi*fm*t);
subplot(5,1,1);
plot(t,xt);
title('Message signal')
xlabel('TIME')
ylabel('AMPLITUDE')

ct=ac*cos(2*pi*fc*t);
subplot(5,1,2);
plot(t,ct);
title('Carrier signal')
xlabel('TIME')
ylabel('AMPLITUDE')

st=am*cos(2*pi*fm*t).*cos(2*pi*fc*t);
subplot(5,1,3);
plot(t,st);
title('Modulated signal')
xlabel('TIME')
ylabel('AMPLITUDE')

dem=st.*cos(2*pi*fc*t);
subplot(5,1,4);
plot(t,dem);
title('Demodulated signal')
xlabel('TIME')
ylabel('AMPLITUDE')

demf=0.5*xt;
subplot(5,1,5);
plot(t,demf);
title('Filtered Demodulated signal')
xlabel('TIME')
ylabel('AMPLITUDE')
m=am/ac
pc=(ac*ac)/2
pt=(m*m)/2*pc;
