%%First Fourier practice program

clear all;
close all;
clc;

w = [0:1:500]*pi/500;
X = exp(i*w)./(exp(i*w)-0.5*ones(1,501));
magX = abs(X); angX = angle(X);
realX = real(X); imagX = imag(X);

figure(1);

subplot(2,2,1);
plot(w,magX);
xlabel('\omega');
ylabel('Magnitude');
title('Magnitude Part');
axis([0 pi min(magX) max(magX)]);

subplot(2,2,3);
plot(w,angX);
xlabel('\omega');
ylabel('Radians');
title('Angle Part');
axis([0 pi min(angX) max(angX)]);

subplot(2,2,2);
plot(w,realX);
xlabel('\omega');
ylabel('Real');
title('Real Part');
axis([0 pi min(realX) max(realX)]);

subplot(2,2,4);
plot(w,imagX);
xlabel('\omega');
ylabel('Imaginary');
title('Imaginary Part');
axis([0 pi min(imagX) max(imagX)]);

print -depsc pr23;
