%%Second Convolution exercise

clear all;
close all;
clc;

n1 = -10;
n2 = 40;

[u1,n1,d1]=stepd_f(0,n1,n2,5);
[u2,n2,d1]=stepd_f(30,n1,n2,5);

xn = u1-u2;
hn = (0.9.^n1).*d1;
yn = conv(xn,hn);

n1_new = n1(1)+n2(1);
n2_new = n1(length(u1)) + n2(length(u2));
n_new = [n1_new:1:n2_new];

figure(1);

subplot(221);
stem(n1,xn);
title('Input');
ylabel('x(n)');
xlabel('n');

subplot(222);
stem(n1,hn);
title('Impulse Response');
ylabel('h(n)');
xlabel('n');

subplot(212);
stem(n_new,yn);
title('Output sequence');
ylabel('y(n)');
xlabel('n');

print -depsc progr15;
