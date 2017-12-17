%%
x = 0:505;
y = zeros(1,length(x));
y(1:165) = x(1:165)*(5409690/165);
y(166:390) = (x(166:390)-165)*(-5409690+2674900)/225+5409690;
y(391:506) = (x(391:506)-390)*(-2674900)/115 + 2674900;
plot(x,y)
hold on
for i = 1:8:length(x)
    line([x(i),x(i)],[0,y(i)])
end
axis([0,505,0,1.2*max(y)])
hold off
ylabel('���(N\cdot mm)')
title('��ֱ�����ͼ')
saveas(gcf,'wan_v.eps')

%%
%%
x = 0:505;
y = zeros(1,length(x));
y(1:165) = x(1:165)*(1176945/165);
y(166:390) = (x(166:390)-165)*(-1883805-254265)/225+1883805;
y(391:506) = (x(391:506)-390)*(-616055)/115 +616055;
plot(x,y)
hold on
for i = 1:8:length(x)
    line([x(i),x(i)],[0,y(i)])
end
axis([0,505,min(y),1.2*max(y)])

plot([0 505],[0 0])
hold off
ylabel('���(N\cdot mm)')
title('ˮƽ�����ͼ')
saveas(gcf,'wan_h.eps')

%%
x = 0:505;
y = zeros(1,length(x));
y(1:165) = x(1:165)*(5536239/165);
y(166:390) = (x(166:390)-165)*(-5728304+2686958)/225+5728304;
y(391:506) = (x(391:506)-390)*(-2744925)/115 + 2744925;
plot(x,y)
hold on
for i = 1:8:length(x)
    line([x(i),x(i)],[0,y(i)])
end
axis([0,505,min(y),1.2*max(y)])

%plot([0 505],[0 0])
hold off
ylabel('���(N\cdot mm)')
title('�ϳ����ͼ')
saveas(gcf,'wan_he.eps')

%%
x = 0:505;
y = zeros(1,length(x));
y(1:165) = 0;%x(1:165)*(5536239/165);
y(166:390) = 3820000;%(x(166:390)-165)*(-5728304+2686958)/225+5728304;
y(391:506) = 0;%(x(391:506)-390)*(-2744925)/115 + 2744925;
plot(x,y)
hold on
for i = 1:8:length(x)
    line([x(i),x(i)],[0,y(i)])
end
axis([0,505,min(y),max(y)*1.2])

%plot([0 505],[0 0])
hold off
ylabel('Ť��(N\cdot mm)')
title('Ť��ͼ')
saveas(gcf,'niu.eps')

%%
x = 0:505;
y = zeros(1,length(x));
y(1:165) = x(1:165)*(5536239/165);
y(166:390) = (x(166:390)-165)*(-6141852+3482618)/225+6141852;
y(391:506) = (x(391:506)-390)*(-2744925)/115 + 2744925;
plot(x,y)
hold on
for i = 1:8:length(x)
    line([x(i),x(i)],[0,y(i)])
end
axis([0,505,min(y),1.2*max(y)])

%plot([0 505],[0 0])
hold off
ylabel('���(N\cdot mm)')
title('�������ͼ')
saveas(gcf,'wan_d.eps')