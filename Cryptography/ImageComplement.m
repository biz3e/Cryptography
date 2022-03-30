function [cImg] = ImageComplement(img)
% This function produces the complement of the input image.
% 
% Input: img: A 2D array of uint8 values containing black and white pixels.
%
% Output: cImg: A 2D array of uint8 values that is complementary of the
%               input image.
% 
% Author: Ben Zhou

% This subtracts 255 by every element in 'img', producing the complementary
% image and outputing it to the new variable 'cImg'
cImg = 255.- img;

end