%%cor1

clear all;
clc;
close all;

x=[1 -2 3 -7 -9 3 5 7 -9 -6 5 7 23 12 -4 -5];
nx = [-6:1:9];

[y1,ny1] = shift_f(x,nx,2);
[y2,ny2] = shift_f(x,nx,4);
[y3,ny3] = shift_f(x,nx,-2);
[y4,ny4] = add_f(y1,ny1,y2,ny2);
[y5,ny5] = mim_f(y4,ny4,y3,ny3);

[x1,nx1] = rev_f(x,nx);
[rxy,nrxy] = conv_f(y5,ny5,x1,nx1);

figure(1);

subplot(2,2,1);
stem(nx,x);
title('x(n)');
xlabel('n');
ylabel('x(n)');

subplot(2,2,2);
stem(ny5,y5);
title('y(n)=x(n-2)+x(n+4)-x(n-2)');
xlabel('n');
ylabel('y(n)');

subplot(2,1,2);
stem(nrxy,rxy);
title('r_{x,y}');
xlabel('n');
ylabel('r_{x,y}(n)');

print -depsc progr19b;