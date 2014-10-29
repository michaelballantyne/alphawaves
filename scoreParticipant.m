function [score] = scoreParticipant(data)

    windows = windowing(data, 512, 128);
    
    leftChannels = [20, 24, 23, 26, 27, 28, 33, 34];
    rightChannels = [2, 3, 116, 117, 118, 122, 123, 124];
    
    left = arrayfun(@(channel) alphaScoreForChannel(windows, channel),...
        leftChannels);
    right = arrayfun(@(channel) alphaScoreForChannel(windows, channel),...
        rightChannels);

    score = diffScore(left, right);
    
end

