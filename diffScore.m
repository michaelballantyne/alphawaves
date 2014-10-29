function [diffScore] = diffScore(leftArray, rightArray)
%Inputs:
%leftArray is a one-dimensional array. 
%rightArray is a one-dimensional array.

%Outputs:
%diffScore is the natural logrithm of the ratio of the inputs.
%

meanLA = mean(leftArray);
meanRA = mean(rightArray);
diffScore = log(meanRA/meanLA);


