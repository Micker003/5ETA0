%% 
%% 1st section
% Read 

[wav, fs] = audioread("beethoven5_8bits.wav",'native'); %reading audio file

%% 2nd section 
% Run this section when making different levels for QAM.

binary = audioToBinary(wav, [ ]);  % insert number of bits corresponding to 
                                   % the modulation levels you want to 
                                   % achieve

%% 3rd section
  
% BER = [ ];        %store your BER values here as a vector
% t = [ ];          %store your t values here as a vector

% figure
% subplot(2,1,1);
% plot(BER);
% ylabel('BER');
% subplot(2,1,2);
% plot(t);
% ylabel('t [s]');