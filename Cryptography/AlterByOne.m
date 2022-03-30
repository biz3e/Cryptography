function [newNum] = AlterByOne(oldNum)
% This function adds 1 to an uint8 value in the range of 0 to 255 
% inclusive.
% In the case of a value being 255, 1 is subtracted.
% 
% Input: oldNum: The uint8 value we want to add 1 to.
% 
% Output: newNum: The uint8 value after 1 has been added to it.
% 
% Author: Ben Zhou

% Checks if the uint8 value is less than 255 and increases input value by
% one if it is less than 255, decreases by one if it is 255
if oldNum < 255
    newNum = uint8(oldNum + 1);
else
    newNum = uint8(oldNum - 1);
end

end

