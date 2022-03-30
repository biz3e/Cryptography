function [p] = CreatePatterns()
% This function creates a 1x6 cell array containing six 2x2 uint8 patterns.
% 
% Input: None.
%
% Output: p: A 1x6 cell array of patterns containing six 2x2 uint8
%            patterns.
% 
% Author: Ben Zhou
%

% Creates pattern 1
p1 = uint8([255, 255; 
            0, 0]);
% Calls function to create complementary pattern of pattern 1
p2 = uint8(ImageComplement(p1));
% Creates pattern 3
p3 = uint8([0, 255; 
            0, 255]);
% Calls function to create complementary pattern of pattern 3
p4 = uint8(ImageComplement(p3));
% Creates pattern 5
p5 = uint8([0, 255; 
            255, 0]);
% Calls function to create complementary pattern of pattern 5
p6 = uint8(ImageComplement(p5));

% Concatenates all the patterns into a 1x6 cell array
p = {p1, p2, p3, p4, p5, p6};

end