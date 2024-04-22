%%First Heterocorrelation exercise

clear all;
clc;
close all;

x = [3 11 7 0 -1 4 2];
nx = [-3:1:3];

[y1,ny1]= shift_f(x,nx,2);
w=randn(1,length(y1));
nw = ny1;

[y2,ny2] = add_f(y1,ny1,w,nw);
[x1,nx1] = rev_f(x,nx);

[rxy,nrxy] = conv_f(y2,ny2,x1,nx1);

figure(1);

subplot(2,2,1);
stem(nx,x);
title('x(n)');
xlabel('n');
ylabel('x(n)');

subplot(2,2,2);
stem(ny2,y2);
title('y(n)=x(n-2)+w(n)');
xlabel('n');
ylabel('y(n)');

subplot(2,1,2);
stem(nrxy,rxy);
title('r_{x,y}');
xlabel('n');
ylabel('r_{x,y}(n)');

print -depsc progr19;
