%We solve a linear NXN system:

clear;
clc;
close all;

fprintf('please insert the number N: ');
n = input('');

for (i=1:1:n)
    for (j=1:1:n+1)
        fprintf('a%d%d=',i,j);
        a(i,j)=input('');
        fprintf('\n');
    end
end
for (i=1:1:n)
    for (j=1:1:n)
        Dxyz1(i,j) = a(i,j);
    end
end

Dxyz = det(Dxyz1);

for (m=1:1:n)
    for (i=1:1:n)
        for (j=1:1:n+1)
            if (j==n+1)
                k=m;
            else
                k=j;
            end
            Dx1(i,k) = a(i,j);
        end
    end
    Dx=det(Dx1);
    x=Dx/Dxyz;
    fprintf('The answer for x_%d=%.4f\n',m,x);
end
