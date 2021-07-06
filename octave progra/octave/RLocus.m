pkg load control;

G1=tf([1.2],[2 1]);

G2=tf(0.25,[5 2.5 1]);

H1=tf(10,1);
H2=tf(2,[2 4]);

G1G2=series(G1,G2);
H22=parallel(H2,tf(1,1));
H1H22=series(H1,H22);
G1G2
H1H22

%M=series(G1G2,H1H22);
M = G1G2*H1H22;
T=feedback(0.6*G1G2,H1H22);
cero = roots(M.num{1})

polo = roots(M.den{1})

M

figure(1);
step(T);
figure(2);
rlocus(M);