clear ;
syms t x z;
%t = 0:0.1:9;
x = heaviside(t-6)+heaviside(t-2).*heaviside(6-t)*0.25.*(t-2);
%plot(t,x,'LineWidth',4)
%axis([0 10 -0.1 1.2])
X = ztrans(x,t,z);
X1 = simplify(X);
plot(0.01:0.1:10,subs(X,z,0.01:0.1:10),'bo','LineWidth',4)