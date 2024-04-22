function [b]=fun1(lin,col);

for (i=1:1:lin)
    for (j=1:1:col)
        fprintf('elmnt%d%d=',i,j);
        b(i,j)=input('');
        fprintf('\n');
    end
end