%%Second Fourier practice program

clear all;
close all;
clc;

N=8;
w = [1:1:3];
a0 = 0;
X=a0;

for(n=0:1:N)
    X = a0+((0.5)*exp(-i*w)).^n;
    a0 = X;
end
    
magX = abs(X); angX = angle(X);
realX = real(X); imagX = imag(X);

figure(1);

subplot(2,2,1);
plot(w,magX);
xlabel('\omega');
ylabel('Magnitude');
title('Magnitude Part');
axis([1 3 min(magX) max(magX)]);

subplot(2,2,2);
plot(w,angX);
xlabel('\omega');
ylabel('Radians');
title('Angle Part');
axis([1 3 min(angX) max(angX)]);

subplot(2,2,3);
plot(w,realX);
xlabel('\omega');
ylabel('Real');
title('Real Part');
axis([1 3 min(realX) max(realX)]);

subplot(2,2,4);
plot(w,imagX);
xlabel('\omega');
ylabel('Imaginary');
title('Imaginary Part');
axis([1 3 min(imagX) max(imagX)]);

print -depsc prog2;
