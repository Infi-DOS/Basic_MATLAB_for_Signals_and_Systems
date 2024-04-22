%%init1.m

clear all;
close all;
clc;

n1 = -10;
n2 = 30;


[u1,n] = step_f(0, n1, n2);
[u2,n] = step_f(20, n1, n2);

xn = u1-u2;
hn = (0.9.^n).*u1;

figure(1);

subplot(211);
stem(n,xn);
title('Input');
ylabel('x(n)');
xlabel('n');

subplot(212);
stem(n,hn);
title('Impulse Response');
ylabel('h(n)');
xlabel('n');

print -depsc progr13;