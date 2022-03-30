function [img] = PatternsToImage(patternArray)
% This function takes a cell array of 2x2 uint8 patterns
% and converts it to a 2D uint8 array.
% 
% Input: patternArray: A 2D m x n cell array of 2x2 patterns. 
%                      Each element of the array will a 
%                      2x2 array of uint8 values.
%
% Output: img: A 2D array of uint8 values with the pixels assembled 
%              into a single image. This will have 2xrows and 2x columns of
%              patternArray.
% 
% Author: Ben Zhou

%Converts the cell array 'patternArray' into a 2D array
img = cell2mat(patternArray);

end

