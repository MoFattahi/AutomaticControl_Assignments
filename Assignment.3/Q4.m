s = tf('s');

G = (9.31 * (s +2)) / ((s^2) * (s + 10));

bode(G)
grid on