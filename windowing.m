function [windows] = windowing(data,windowLength,windowOffSet)

%Takes in a cell array of two-dimensional arrays with random lengths
%because of artifact removal. Throws away data if the array is less than
%512 in length in the second dimension. Then starts windowing on each
%element in the cell array. Each 512 section is a different element in the
%return cell array.
%Return a cell array of each of the different windows. Each of the windows
%should be a 129x512 array.

windows = {};

for i = 1:length(data)
    curData = data{i};
    for j = 1:windowOffSet:length(curData)
        if (j + (windowLength-1)) <= length(curData)
            windows = [windows curData(:,j:j+(windowLength-1))];
        end
    end
end