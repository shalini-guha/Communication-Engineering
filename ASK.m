close all;
clear all;
clf;
fc=20
n=[1 1 0 1 1 ]
l=length(n)
if n(l)==1
    n(l+1)=1
else
    n(l+1)=0
end
l1=length(n)
tn=0:l1-1
subplot(4,1,1)
stairs(tn,n);
xlabel('Time(s)');
ylabel('Amplitude(V)')
title('Message Signal');
t=0:0.01:l
c=sin(2*pi*fc*t)
subplot(4,1,2)
plot(t,c);
xlabel('Time(s)');
ylabel('Amplitude(V)');
title('Carrier Signal');
grid on;
for i=1:l
    for(j=(i-1)*100:i*100)
        if(n(i)==1)
            s(j+1)=c(j+1)
        else
            s(j+1)=0;
       end
    end
end
subplot(4,1,3);
plot(t,s);
xlabel('Time(s)');
ylabel('Amplitude(V)');
title('ASK signal');
grid on;
for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end
subplot(4,1,4)
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude(V)');
title('Demodulated signal');
grid on;
