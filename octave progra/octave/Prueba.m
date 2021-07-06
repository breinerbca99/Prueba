pkg load control

sys1 = tf(2,1);
sys2 = tf(2,1);
sys3 = tf(1,[1 4]);
sys4 = tf(1,[1 0]);
sys5 = tf(1,[1 0 9]);
sys6 = tf(12,1);
sys7 = tf(40,1);
sys8 = tf([1 6],1);

sys = append(sys1, sys2, sys3, sys4, sys5, sys6, sys7, sys8);
q = [1 -8 0; 2 1 -7; 3 2 0; 4 3 -6; 5 4 0; 6 5 0; 7 4 0; 8 5 0];
inputs=1;
outputs=5;

syslc = connect(sys, q, inputs, outputs)

figure(1)
step(syslc)

figure(2)
impulse(syslc)

figure(3)
%[p,z] = pzmap(syslc)
pzmap(syslc)