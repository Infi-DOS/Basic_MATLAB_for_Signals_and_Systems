function [a]=fun2(Dxyz2,Dx2,Dy2,Dz2);

Dxyz = det(Dxyz2);
Dx = det(Dx2);
Dy = det(Dy2);
Dz = det(Dz2);

x = Dx/Dxyz;
y = Dy/Dxyz;
z = Dz/Dxyz;

fprintf('x=%.4f\ny=%.4f\nz=%.4f\n',x,y,z);