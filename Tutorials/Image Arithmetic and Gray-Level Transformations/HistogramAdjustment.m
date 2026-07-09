i=imread('Mammogram.tif');
g1=imadjust(i,[0 1],[1 0]);
figure, imshow(g1);
g2=imadjust(i,[0.5 0.75],[1 0]);
figure, imshow(g2);
imhist(i);
g2=imadjust(i,[],[],2);
figure, imshow(g2);
