%We solve the linear 3X3 system:
%a11*x + a12*y + a13*z = a14
%a21*x + a22*y + a23*z = a24
%a31*x + a32*y + a33*z = a34

clear;
clc;
close all;

for (i=1:1:3)
    for (j=1:1:4)
        fprintf('a%d%d=',i,j);
        a(i,j)=input('');
        fprintf('\n');
    end
end
for (i=1:1:3)
    for (j=1:1:3)
        Dxyz1(i,j) = a(i,j);
    end
end
for (i=1:1:3)
    for (j=1:1:4)
        if (j==4)
            k=1;
        else
            k=j;
        end
        Dx1(i,k) = a(i,j);
    end
end
for (i=1:1:3)
    for (j=1:1:4)
        if (j==4)
            k=2;
        else
            k=j;
        end
        Dy1(i,k) = a(i,j);
    end
end
for (i=1:1:3)
    for (j=1:1:4)
        if (j==4)
            k=3;
        else
            k=j;
        end
        Dz1(i,k) = a(i,j);
    end
end

Dxyz = det(Dxyz1);
Dx = det(Dx1);
Dy = det(Dy1);
Dz = det(Dz1);

x = Dx/Dxyz;
y = Dy/Dxyz;
z = Dz/Dxyz;

fprintf('x=%.4f\ny=%.4f\nz=%.4f\n',x,y,z);