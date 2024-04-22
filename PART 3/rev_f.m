%%y(n)=x(-n)

function[y,ny] = rev_f(x,nx);
in_matr = [x;nx];
fin_matr = fliplr(in_matr);

y = fin_matr(1,:);
ny = -fin_matr(2,:);
