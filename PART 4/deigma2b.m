%%deigma2b
close all;
clc;
clear all;

Dt = 5e-5;
t = -5e-3:Dt:5e-3;
x = exp(-1000*abs(t));

Ts = 1e-3;
n = -5:1:5;
x_d = exp(-1000*abs(n*Ts));

iter_max = 500;
iter = 0:1:iter_max;
w = (iter/iter_max)*pi;
X_d = x_d*exp(-i*n'*w);
X_d = real(X_d);
w = [-fliplr(w),w(2:iter_max+1)];
X_d = [fliplr(X_d),X_d(2:iter_max+1)];

figure(1);

subplot(2,1,1);
plot(1000*t,x);
xlabel('t [msec]');
ylabel('x(t)');
title('Discrete signal(Ts=1msec)');
hold on ;
stem(n*Ts*1000 ,x_d);
hold off ;

subplot(2,1,2);
plot(w/pi,X_d);
xlabel('f [\pi units]');
ylabel('X(i\Omega)');
title('Discrete-time Fourier trasnform');

print -depsc progr23;
