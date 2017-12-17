sys_tf = tf([0 0 1],[1 2 4]);
t = 0:0.05:5;
u = 5*sin(t)+1-exp(-0.5*t);
[y,t1,x] = lsim(sys_tf,u,t);
plot(t,u,'b','LineWidth',2)
hold;
plot(t1,y,'r','LineWidth',4)
%%
legend('输入信号','输出信号')
xlabel('时间/s')
ylabel('幅值')
title('线性系统输入响应')
%saveas(gcf,'f1b.eps')