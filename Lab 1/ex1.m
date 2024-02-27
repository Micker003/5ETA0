clear
close all
B = (50*1e3)
T = 1/B
t1 = 0:T:20*T
t2 = 0:T/2:20*T/2
t3 = 0:T/4:20*T/4

% t2 = linspace(0,19*B*2,20)
% t3 = linspace(0,19*B*4,20)

omega_1 = cos(2*pi*50*1e3 * t1 + pi/3)
[spec1, spec1b] = calculateSpectrumdB(omega_1, T)
omega_2 = cos(2*pi*50*1e3 * t2 + pi/3)
[spec2, spec2b] = calculateSpectrumdB(omega_2, T/2)
omega_3 = cos(2*pi*50*1e3 * t3 + pi/3)
[spec3, spec3b] = calculateSpectrumdB(omega_3, T/4)

subplot(3,2,1)
stem(t1, omega_1)
subplot(3,2,2)
stem(spec1, spec1b)
subplot(3,2,3)
stem(t2, omega_2)
subplot(3,2,4)
stem(spec2, spec2b)
subplot(3,2,5)
stem(t3, omega_3)
subplot(3,2,6)
stem(spec3, spec3b)

% newplot()

