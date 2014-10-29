function [score] = alphaScoreForChannel(windows, channel)

    averagedSpectrum = zeros(1, 512);
    
    for i=1:length(windows)
        window = windows{i};
        averagedSpectrum = averagedSpectrum + fftHam(window(channel));
    end
    
    averagedSpectrum = averagedSpectrum / length(windows);
    score = alphaScore(averagedSpectrum);
    
end

