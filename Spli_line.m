figure(1)
%x1=0:500:3500;
S1=HBadd3(:,1);
S2=HBaddLin(:,1);
plot(S1,'r','lineWidth',1);
hold on;
plot(S2,'b','lineWidth',1);
hold on;
set(gca,'fontsize',14);
%xlabel('²âÏß')
%ylabel('Õñ·ù')