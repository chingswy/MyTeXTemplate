syms w f;
t = 0:0.2:20;
f = 10*sin(4*pi*t)+48*sin(48*pi*t)+5*sin(89*pi*t);
plot(t,f,'o')