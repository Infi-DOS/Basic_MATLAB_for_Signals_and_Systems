%%step function
function[u,n]=step_f(n0,n1,n2);
n = [n1:1:n2];
u = [(n-n0)>=0];
