%visualization after energy balance
figure(1)
%x1=0:500:3500;
y1=Vy(50,:);
y2=Totalf920(50,:);
y3=Vy10(50,:);
y4=Vy15(50,:);
plot(y1,'r','lineWidth',1);
hold on;
plot(y2,'b','lineWidth',1);
hold on;
plot(y3,'g','lineWidth',1);
hold on;
plot(y4,'y','lineWidth',1);
set(gca,'fontsize',14);
xlabel('²âÏß')
ylabel('Õñ·ù')