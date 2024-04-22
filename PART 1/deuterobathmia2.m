%We solve the Equation a1x^2 + a2x^2 + a3x = 0

clear;
clc;
close all;

for (i=1:1:3)
    fprintf('a%d=',i);
    a(i)=input('');
    fprintf('\n');
end

res = roots([a(1) a(2) a(3)])