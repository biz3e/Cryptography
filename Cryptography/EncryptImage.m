function [cipherArray] = EncryptImage(img, key)
% This function encrypts a plain image using the key provided.
% 
% Input: img: A 2D array of uint8 values that contains an image 
%             made from black and white pixels to be encrypted
%        key: A 2D cell array of 2x2 patterns that will be the key array of
%             patterns. Each element will be a 2x2 uint8 array.
%
% Output: cipherArray: A 2D cell array of 2x2 patterns that is the cipher
%                      array of patterns. Each element will be a 2x2 uint8
%                      array.
% 
% Author: Ben Zhou

% Checks for the number of rows and columns in 'img'
[rows, cols] = size(img, 1, 2);

% Checks each pixel of 'img'. If it's dark, a complementary pattern from
% 'key' will be assigned. If light, the original pattern from 'key' is
% assigned.
for i = 1:rows
    for j = 1:cols
%         Checks if pixel is dark
        if img(i, j) < 128
%             Assigns complement of pattern from key{i, j}
            cipherArray{i, j} = ImageComplement(key{i, j});
        else
%             Assigns original of pattern from key{i, j}
            cipherArray{i, j} = key{i, j};
        end
    end
end

end