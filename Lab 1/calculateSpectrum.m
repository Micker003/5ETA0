function [f, mag] = calculateSpectrum(x, fs)

n = length(x);
X = fft(x);
Y2 = fftshift(X);

mag = (2*abs(Y2)./n);
f = (-n/2:n/2-1)*fs/n;

end
