%%%We solve the Equation ax^2+bx+c=0

clear;
clc;
close all;

%Parametroi Programmatos

a = 1;
b = 1;
c = 1;

D = sqrt(b^2-4*a*c);

p1 = (-b+D)/(2*a);
p2 = (-b-D)/(2*a);

p1r = real(p1);
p1i = imag(p1);

p2r = real(p2);
p2i = imag(p2);

fprintf('p1=%.4f %.4fi\np2=%.4f %.4fi\n',p1r,p1i,p2r,p2i);

