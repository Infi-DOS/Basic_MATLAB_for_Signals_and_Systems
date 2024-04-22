%%y(n)=x1(n)-x2(n)

function[y,ny] = mim_f(x1,nx1,x2,nx2);
n_min = min(min(nx1), min(nx2));
n_max = max(max(nx1), max(nx2));
ny = [n_min:1:n_max];

new_x1 = zeros(1,length(ny));
new_x2 = zeros(1,length(ny));

new_x1(find((ny>=min(nx1))&(ny<=max(nx1))==1))=x1;
new_x2(find((ny>=min(nx2))&(ny<=max(nx2))==1))=x2;

y=new_x1-new_x2;
