%3D  visualization
[m,n,p] = size(inVB);


M=0:1:(m-1);
%timezero为零时间点，sampling_interval为采样间隔
N = 0:1:(n-1);
%stepsize为步距，即道间距
P = 0:0.04:(p-1)*0.04;
%line_distance为测线距离
[X,Y,Z] = meshgrid(N,M,P);
%生成立方体
hs = slice(X,Y,Z,inVB,[],N,[]);

%显示切片
set(hs,'FaceColor','interp','EdgeColor','None');
set(gca,'zdir','reverse')
%view(90,-90)
set(gca,'XTick',[0 1 2])
set(gca,'XTickLabel',{'0','100','200'});%修改坐标范围
set(gca,'YTick',[0 1 2])
set(gca,'YTickLabel',{'2','3','4'});%修改坐标范围
%ylim([0,300])
%xlim([0,300])
%zlim([4,6])
set(gca,'fontsize',12);
xlabel('inline');ylabel('crossline');zlabel('时间/ns')
%设置切片颜色
figure(1)
caxis([-2000 2000]);
%指定颜色范围
axis vis3d;
%便于坐标系旋转
box on;
%设置框型坐标
grid off;
%去掉分割线
alpha(0.9980394);
%使数据透明度与颜色值对应
alphamap('vdown');
alphamap('decrease', 2);
alim([-20000 20000]);
%colormap gray;
axis tight;