%% Exercise 3.2
clear all;
close all;
clc; 

load 'DLORENTZ.mat';
DLORENTZ = DLORENTZ(1:600);
%Do not change any of the values below!
%pulsetrain parameters
n = 10^(-6);                                                       
T_s = 30*n;
tau_1 = (1/6)*T_s;                 
delay1 = (0:30:600)*n;
t_1 = (0:1:600-1)*n; 

train1 = pulstran(t_1, delay1, 'rectpuls', tau_1); %the pulsetrain to get WAVE_SAMP
WAVE_SAMP = DLORENTZ'.*train1;

%space for you to create its spectral plot
T_s = 30e-6
[spec1, specb1] = calculateSpectrumdB(WAVE_SAMP, 35e3)
plot(spec1, specb1)



%% Exercise 3.3
clear all;
close all;
clc; 

load 'DLORENTZ.mat';
DLORENTZ = DLORENTZ(1:600);
%Do not change any of the values below!
%pulsetrain TAU_NEW parameters
n = 10^(-6);
T_s2 = 30*n;
tau_2 = (5/6)*T_s2;
delay2 = (0:30:600)*n;
t_2 = (0:1:600-1)*n;

train2 = pulstran(t_2, delay2, 'rectpuls', tau_2);

%pulsetrain TS_NEW parameters
n = 10^(-6);
T_s3 = 12*n;
tau_3 = (1/6)*T_s3;
delay3 = (0:15:600)*n;
t_3 = (0:1:600-1)*n;

train3 = pulstran(t_3, delay3, 'rectpuls', tau_3);

%space for you to multiply DLORENTZ with the correct pulsetrain and plot
%its time and frequency domain plots


OURSAMP = train2' .* DLORENTZ
plot(OURSAMP)
figure
[spec1, specb1] = calculateSpectrum(OURSAMP, 70e3)
plot(spec1, specb1)
