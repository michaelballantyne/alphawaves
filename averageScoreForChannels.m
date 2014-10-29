function [average] = averageScoreForChannels(window, channels)

    average = sum(arrayfun(@ (channel) alphaScore(fftHam(window(channel))), channels)) / length(channels);
    
end