%Computation of a weird matrix:
% F_ij = 2*(a_ij)^5 + 3*(b_ij)^3 + 5*(a_ij*b_ij) +1
% A,B: 3X4 

clear;
clc;
close all;

li = 3;
co = li+1;

fprintf('\nGive me the elements of the first (A) matrix \n') ;
[A] = fun1(li,co);
fprintf('\nGive me the elements of the second (B) matrix \n') ;
[B] = fun1(li,co);

fprintf('\n Printing Answers:\n');

for(i=1:1:li)
    for(j=1:1:co)
        F(i,j)=2.*A(i,j).^5+3.*B(i,j).^3+5*A(i,j).*B(i,j)+1;
        fprintf('F%d%d=%.4f',i,j,F(i,j));
        fprintf('\n');
    end
end

