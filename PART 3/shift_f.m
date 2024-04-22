%%shift function: y(n)=x(n+k)

function [y,ny] = shift_f(x,nx,k);
ny=nx+k;
y=x;
