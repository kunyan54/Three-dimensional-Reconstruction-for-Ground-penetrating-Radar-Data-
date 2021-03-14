x=1:200;
y=1:16;
Z=Hface10;%插值前数据
%[x,y]=meshgrid(x,y);
%mesh(x,y,Z);

xi=1:0.5:200;
yi=1:0.05:16;
[xi,yi]=meshgrid(xi,yi);
HBadd3=interp2(x,y,Z,xi,yi,'Spline');
HBaddLin=interp2(x,y,Z,xi,yi,'linear');

