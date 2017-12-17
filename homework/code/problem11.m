A = [0 1;-4 -2];
B = [0;1];
C = [1,0];
D = 0;
[num,den] = ss2tf(A,B,C,D);
sys_tf = tf(num,den);