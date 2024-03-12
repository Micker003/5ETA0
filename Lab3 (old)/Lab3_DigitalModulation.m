%% 
%% 1st section
% Read 

[wav, fs] = audioread("beethoven5_8bits.wav",'native'); %reading audio file

%% 2nd section 
% Run this section when making different levels for QAM.

binary = audioToBinary(wav, 8);  % insert number of bits corresponding to 
                                   % the modulation levels you want to 
                                   % achieve

%% 3rd section
  
BER = [0,0,0.000102, 0.006515, 0.07883, 0.2516, 0.4945];        %store your BER values here as a vector
t = [90.62,60.37,45.25,36.25,30.12,25.87,22.62 ];          %store your t values here as a vector

figure
subplot(2,1,1);
plot(BER);
ylabel('BER');
subplot(2,1,2);
plot(t);
ylabel('t [s]');