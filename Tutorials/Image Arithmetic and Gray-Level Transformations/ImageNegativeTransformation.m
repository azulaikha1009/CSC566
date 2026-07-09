i=imread('mammogram.tif');
j=255-i; imshow(j);
negI = imcomplement(i); figure, imshow(negI);