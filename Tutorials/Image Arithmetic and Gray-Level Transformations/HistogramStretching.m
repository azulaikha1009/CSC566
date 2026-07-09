I = imread('pout.tif');
subplot(2,2,1), imshow(I); title('Original')
subplot(2,2,2), imhist(I);
Id = double(I);
I_min = min(Id(:));
I_max = max(Id(:));
J = 255*(Id-I_min)/(I_max-I_min);
J = uint8(J);
subplot(2,2,3), imshow(J); title('Stretched')
subplot(2,2,4), imhist(J);
J1 = histeq(I);
imhist(J);
figure, imshow(J)
