function [patternArray] = ImageToPatterns(img)
% This function takes a 2D uint8 array and converts it to a cell array of 
% 2x2 uint8 patterns.
% 
% Input: img: A 2D array of uint8 values that contains an image 
%             made from black and white pixels.
%
% Output: patternArray: A 2D cell array of 2x2 patterns taken from the 
%                       image. Each element of the array is a pattern
%                       stored as a 2x2 uint8 array.
% 
% Author: Ben Zhou

% Checks for number of rows and columns in 'img'
[rows, cols] = size(img, 1, 2);

% Divides rows and colums of 'img' by 2 
% as we are dividing the 2D array into a cell array of 2x2 uint8 patterns
halfRows = rows/2;
halfCols = cols/2;

% Creates 1xhalfRows array and multiplies by 2 to show how many times to
% divide 2D array into 2 rows
cellRows = ones(1, halfRows).* 2;
% Creates 1xhalfCols array and multiplies by 2 to show how many times to
% divide 2D array into 2 rows
cellCols = ones(1, halfCols).* 2;

% Converts the 2D array 'img' into a cell array containing 2x2 uint8
% patterns
patternArray = mat2cell(uint8(img), cellRows, cellCols);


end

