%Loop for_end

clear;
clc;
close all;

a0 = 1;

an = a0;

for (i=1:1:10)
    %fprintf('an=%.2f\n',an); gia na doume endiamesa ta apotelesmata
    an = - 0.8*an + 2;
end

fprintf('an=%.2f\n',an);

