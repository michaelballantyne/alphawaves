function[spectrum] = fftHam(data)
%Takes in a one-dimensional array of data, turns it into a wave, applies
%the appropriate hamming window, and returns the absolute value of the
%fast fourier transform.
%Data is the array of data.

dataLength = length(data);

spectrum = abs(fft(hamming(dataLength,'periodic').* data))/dataLength*2;
