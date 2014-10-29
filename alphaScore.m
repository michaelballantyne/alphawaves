function [score] = alphaScore(spectrum)

score = sum((spectrum(18:27).*2).^2);