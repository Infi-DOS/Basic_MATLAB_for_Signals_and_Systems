% We solve the linear 3X3 system with matrix:
%% a11*x + a12*y + a13*z = a14
%%% a21*x + a22*y + a23*z = a24
%%%% a31*x + a32*y + a33*z = a34

clear;
clc;
close all;

li = 3;
co = li+1;
[b] = fun1(li,co);

for(i=1:1:li)
    for(j=1:1:co-1)
        Dxyz1(i,j)=b(i,j);
    end
end
for (i=1:1:li)
    for(j=1:1:co)
         if (j==4)
            k=1;
        else
            k=j;
        end
        Dx1(i,k) = b(i,j);
    end
end
for (i=1:1:li)
    for(j=1:1:co)
         if (j==4)
            k=2;
        else
            k=j;
        end
        Dy1(i,k) = b(i,j);
    end
end
for (i=1:1:li)
    for(j=1:1:co)
         if (j==4)
            k=3;
        else
            k=j;
        end
        Dz1(i,k) = b(i,j);
    end
end
fun2(Dxyz1,Dx1,Dy1,Dz1);


