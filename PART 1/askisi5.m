%Ploting example

clear;
clc;
close all;

a0 = 1;
an = a0;
epsilon = 1e-3;

res = 1;
n = 1;

while (res>epsilon)
    an_in = an;
    res1(n) = an;
    x(n) = n;
    an = -0.8*an + 2;
    n = n+1;
    res = abs(abs(an_in)-abs(an));
end

fprintf('an=%.2f\nn=%d\n',an,n);

plot(x,res1);
drawnow;
