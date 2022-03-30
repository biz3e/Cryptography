function [hiddenImg] = EmbedImage(binaryImg, colourImg)
% This embeds the binary image inside another colour image.
% 
% Input: binaryImg: A 2D array of uint8 values of the black and white image
%                   that will be embedded inside the colourImg. 
%                   Pixel values will either be 0 or 255. This image will
%                   not be bigger than colourImg.
%        colourImg: A 3D array of uint8 values of the colour image that
%                   binaryImg will be embedded into.
%
% Output: hiddenImg: A 3D array of uint8 values containing a 
%                    hidden black and white image.
% 
% Author: Ben Zhou

% Checks for the number of rows and columns in the array 'binaryImg'
[rows, cols] = size(binaryImg, 1, 2);
% Duplicates the 'colourImg' array into a new varaible 'hiddenImg'
hiddenImg = colourImg;

% Checks if each 'binaryImg' pixel is black or white. If black, sum of 
% 'colourImg' rgb values will be even. Otherwise if white, sum of rgb values
% will be made odd
for i = 1:rows
    for j = 1:cols

        colourSum = double(colourImg(i, j, 1)) + double(colourImg(i, j, 2)) + double(colourImg(i, j, 3));
% Checks if 'binaryImg' pixel is black
        if binaryImg(i, j) == 0
%             Checks if rgb sum is odd
            if mod(colourSum, 2) == 1
%                 Changes rgb sum to even by increase r value by 1
                hiddenImg(i, j, 1) = AlterByOne(colourImg(i, j, 1));
            end
            
        else
%             Checks if rbh sum is even
            if mod(colourSum, 2) == 0
%                 Changes rgb sum to odd by increasing r value by 1
                hiddenImg(i, j, 1) = AlterByOne(colourImg(i, j, 1));
            end
        end
    end
end

end

