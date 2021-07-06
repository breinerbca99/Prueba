pkg load control;
G = tf([1 1],[1 2 6 0]);
H = tf([1], [1 1]);

T = feedback(5*G,H);
T
zero = roots(T.num{1})
polo = roots(T.den{1})

GH = G*H;
GH
zero = roots(GH.num{1})
polo = roots(GH.den{1})

figure(1);
rlocus(GH);
hold on;
pzmap(GH);

figure 2;
step(T);