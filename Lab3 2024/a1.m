close all

[wav, fs] = audioread("song1.wav");
periodogram(wav, [], [], fs,'centered')

hold on
[wav2, fs2] = audioread("assignment-1.1_received.wav");
periodogram(wav2, [], [], fs2,'centered')

wavdiff = normalize(wav) - normalize(wav2);
figure
periodogram(wavdiff, [], [], fs2,'centered')

wavdb = db(wav);
wavdb2 = db(wav2);
wavdiffdb = normalize(wavdb) - normalize(wavdb2);

mean(db(wavdiff))
mean(wavdiff)

%% Compare amplitudes

figure
plot(wav)
hold on
plot(wav2)