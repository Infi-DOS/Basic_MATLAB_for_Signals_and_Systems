%%y=convolution(x1,x2)

function[y,ny] = conv_f(x1,nx1,x2,nx2)

ny1 = nx1(1)+nx2(1);
ny2 = nx1(length(x1)) + nx2(length(x2));
ny = ny1:1:ny2;
y = conv(x1,x2);
