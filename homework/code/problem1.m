%%
syms a T s;
num = 1;
den = [1 2*a a*a];
sys = tf(num,den)*tf(1,[1,0]);

%% 1
syms a s t z n
F = (1-exp(-T*s))/(s*(s - a)^2);
sys_t = ilaplace(F,t);
t = n*T;
sys_z = ztrans(sys_t,n);
sys = simplify(sys_z);

%% 2
syms a s t z n T;
F = 1/s+1/(T*s*s);
sys_t = ilaplace(F,n*T);
t = n*T;
sys_z = ztrans(sys_t,n,z);
sys = simplify(sys_z);

%% 2.2
syms a s t z n T;
F = (T*s+1)/(T*s*s*(T*s+1));
sys_t = ilaplace(F,n*T);
t = n*T;
sys_z = ztrans(sys_t,n,z);
sys = simplify(sys_z);

%% 2.3
syms a s t z n T;
F = (1-exp(-T*s))^2*(T*s+1)/(T*s*s);
sys_t = ilaplace(F,n*T);
t = n*T;
sys_z = ztrans(sys_t,n,z);
sys = simplify(sys_z);

%% 3.2
s = tf('s');
zoh = (1-exp(-s))/s;
foh = (1-exp(-s))^2*(s+1)/(s*s);
bode(zoh)
hold on
bode(foh)
legend('zoh','foh')

%% 5
syms a s t z n;
F = exp(-0.4*s)/(s*s);
sys_t = ilaplace(F,n);
sys_z = ztrans(sys_t,n,z);
sys = simplify(sys_z);
