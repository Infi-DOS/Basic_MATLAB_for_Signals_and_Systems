%%deigma3b
clear all;
close all;
clc;

Dt = 5e-5;
t = -13:Dt:13;
x = 1./(t.^2+1);

Ts = 0.0001;
n = -130000:1:130000;
x_d = 1./((n.*Ts).^2.+1);

iter_max = 500;
iter = 0:1:iter_max;
w = (iter/iter_max)*pi;
X_d = x_d*exp(-1i*n'*w);
X_d = real(X_d);

w = [-fliplr(w),w(2:iter_max+1)];
X_d = [fliplr(X_d),X_d(2:iter_max+1)];

figure(1);

subplot(2,1,1);
plot(t,x);
xlabel('t [sec]');
ylabel('x(t)');
title('Discrete signal(Ts=0.0001sec)');
hold on;
stem(n*Ts,x_d);
hold off;

subplot(2,1,2);
plot(w/pi,X_d);
xlabel('f [\pi units]');
ylabel('X(i\Omega)');
title('Discrete-time Fourier trasnform');

print -depsc progr32;