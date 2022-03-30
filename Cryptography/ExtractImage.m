function [originalImg] = ExtractImage(hiddenImg)
% This function extracts the image that was embedded into a colour image.
% 
% Input: hiddenImg: A 3D aray of uint8 values containing a hidden black and
%                   white image.
%
% Output: originalImg: A 2D array of uint8 values of the hidden black and
%                      white image.
% 
% Author: Ben Zhou

% Checks for the number of rows and columns in 'hiddenImg'
[rows, cols] = size(hiddenImg, 1, 2);

% Creates a 2D rows x cols empty uint8 array where each element is to be
% filled with either 0 or 255
originalImg = uint8(zeros(rows, cols));

% Checks the sum of 'hiddenImg' rbg values at each pixel.
% If sum is even, a black pixel is assigned. If odd, a white pixel is
% assigned.
for i = 1:rows
    for j = 1:cols
%         Sums the RGB values of 'hiddenImg' at row i and column j
        colourSum = double(hiddenImg(i, j, 1)) + double(hiddenImg(i, j, 2)) + double(hiddenImg(i, j, 3));
%         Checks if the sum of RGB values is even
        if mod(colourSum, 2) == 0
%             Assigns a black pixel to position (i, j) in the binary image 
            originalImg(i, j) = 0;
        else
%             Assigns a white pixel to position (i, j) in the binary image
            originalImg(i, j) = 255;
        end
    end
end
            

end

