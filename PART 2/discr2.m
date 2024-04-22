%%Practice code for complex Funcion analysis

close all;
clc;
clear all;

n = [-20:1:20];

for k = 1:1:41;
    n(k) = k-21;
end

fn = 3*exp((-0.2+0.5*i).*n);

fn_r = real(fn);
fn_i = imag(fn);
fn_m = abs(fn);
fn_p = angle(fn);

figure(1);

subplot(2,2,1);
stem(n,fn_r);
title('Real Part');
ylabel('fn_r');
xlabel('n');

subplot(2,2,2);
stem(n,fn_i);
title('Image Part');
ylabel('fn_i');
xlabel('n');

subplot(2,2,3);
stem(n,fn_m);
title('Magnitude Part');
ylabel('fn_m');
xlabel('n');

subplot(2,2,4);
stem(n,fn_p);
title('Phase Part');
ylabel('fn_p');
xlabel('n');

print -depsc pr11b;

