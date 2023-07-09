clear all;clc;close all;
angularf = 5*pi; 
t = -0.6:1e-3:0.4; % Time vector in micro seconds
x = 1.5 + 3.5*cos(angularf*t+0.2*pi); % Original signal, x(t);
s = 1.5 + 3.5*cos(angularf*(t+0.1)+0.2*pi); % s(t) = x(t-delta)
plot(t,x,'g',t,s,'r');
xlabel('Time (\mu s)');ylabel('signal');
grid;
xlim([-0.6 0.4]);
ylim([-2 5]);
legend("x(t)","s(t)");
legend("location","southeast");
clear all;clc;close all;