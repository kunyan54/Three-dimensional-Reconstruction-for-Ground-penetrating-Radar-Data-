%amplitude equalization
Tmean=mean(mean(abs(Btotalf920)));%矩阵均值
meanX=mean(abs(Btotalf920),1);%每列均值
Wi=Tmean./meanX;
for i=1:3200 %总道数
    for j=1:250 %总采样点
    BTOL_tra920(j,i)=Wi(i).*Btotalf920(j,i);
    end
end