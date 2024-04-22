%% deigma1
close all;
clear all;
clc;

Dt = 5e-5;
t = -5e-3:Dt:5e-3;
x = exp(-1000*abs(t));

W_max = 2*pi*2000;
iter_max = 500;
iter = 0:1:iter_max;
W = (iter/iter_max)*W_max;

X = x*exp(-1i*t'*W)*Dt;
X = real(X);

W = [-fliplr(W), W(2:501)];
X = [fliplr(X), X(2:501)];

figure(1);

subplot(2,1,1);
plot(1000*t,x);
xlabel('t [msec]');
ylabel('x(t)');
title('analog signal');

subplot(2,1,2);
plot(W/(2*pi),X);
xlabel('f [Hz]');
ylabel('X [i\omega]');
title('Coninuous-time Fourier transform');

print -depsc progr10;
