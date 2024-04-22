%%function with δ and step
function[u,n,d]=stepd_f(n0,n1,n2,d0);
n = [n1:1:n2];
u = [(n-n0)>=0];
d = [(n-d0)==0];
