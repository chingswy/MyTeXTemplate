syms s f X Z n z T0
X = s/((s+1)*(s+1)*(s+2));%���ݺ���X(s)
x = ilaplace(X); %�����ϱ任
x1 = 2*exp(-n*T0)-2*exp(-2*n*T0)-n*T0*exp(-n*T0);
Z = ztrans(x1,n,z);