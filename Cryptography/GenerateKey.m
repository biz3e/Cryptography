function [key] = GenerateKey(randInt, p)
% This function generates a random m x n cell array (key) containing 
% 2x2 binary patterns.
% 
% Input: randInt: A 2D array of random integer values between 1 to 6
%        p: A 1x6 cell array containing 6 patterns stored as a 2x2 uint8
%           array.
%
% Output: key: A 2D cell array containing patterns to act as a key. Each
%              element is a 2x2 uint8 array from 'p' based on the
%              values of randInt.
% 
% Author: Ben Zhou

% Checks for the number of rows and columns of the 'randInt' array
[rows, cols] = size(randInt, 1, 2);

% Creates a rows x cols empty cell array where each cell is to be replaced
% with 2x2 uint8 arrays 
key = cell(rows, cols);

% Checks every element in 'randInt' and assigns 'key' with the pattern
% specified by the value of 'randInt'
for i = 1:rows
    for j = 1:cols
%         Replaces the each cell with the pattern specified by 'randInt'
        key{i, j} = p{randInt(i, j)};
    end
end

end

