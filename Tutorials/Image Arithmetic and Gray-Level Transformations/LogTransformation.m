i=imread('FourierSpectrum.jpg');
imshow(i);
g = log(1 + double(i));
figure, imshow(g,[]);
