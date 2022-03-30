function [img] = DecryptImage(cipherImg, key)
% This function decrypts the ciphered image.
% 
% Input: cipherImg: A 2D uint8 array containg the black and white cipher
%                   image.
%        key: A 2D uint8 array containing the black and white key image.
%             This will not be bigger than the cipherImg.
%
% Output: img: A 2D uint8 array containing the decrypted image, this is the
%              same size as the key.
% 
% Author: Ben Zhou

% Checks for the number of rows and columns in 'key'
[rows, cols] = size(key, 1, 2);

% Creates a 2D rows x cols empty uint8 array where each element is to be
% replaced with either 0 or 255
img = uint8(zeros(rows,cols));

% Compares every pixel in 'cipherImg' with 'key'. Assigns black pixel to 
% position (i,j) in 'img' if pixels are the same and white pixel if pixels
% are different.
for i = 1:rows
    for j = 1:cols
        
        if cipherImg(i, j) == key(i, j)
            img(i, j) = 255;
            
        else
            img(i, j) = 0;
        end
    end
end

end

