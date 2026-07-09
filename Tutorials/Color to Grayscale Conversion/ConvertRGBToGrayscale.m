RGB = imread ('balloons.png');
imshow (RGB);
BW=im2bw(RGB);
I = im2gray(RGB);
imshow(I);
GRAY=rgb2gray(RGB); figure; imshow(GRAY);
title('Intensity image'); 

