%Loop while_end

clear;
clc;
close all;

i = 0;
a0 = 1;
an = a0;

while (an<1.110 || an> 1.118) % || is 'or' operator
    i = i+1;
    an = - 0.8*an+2;
end

fprintf('an=%.2f\t i=%.0f\n',an,i);

