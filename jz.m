%moving average 
x=0:3200;
n=15; % n为模板长度，值可以改变
mean = ones(1,n)./n;  %mean为1×n的模板，各数组元素的值均为1/n
for i =1:250
    y = conv(BTOL_tra920(i,:),mean);
    Vy15(i,:)=y(1:length(y)-length(mean)+1);
end