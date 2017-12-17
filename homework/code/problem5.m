% syms z n R
% R = 0.4*z/(z^3-2.2*z^2+1.9*z-0.7);
% r = iztrans(R,z,n);
% r = simplify(r);
% latex(r)
sys = tf([0.4,-0.4],[1 -2.2 1.9 -0.7],1);
% create the discrete system
step(sys)
% impulse(sys);
title('step response')
%axis([0 2e5 0 1e5])