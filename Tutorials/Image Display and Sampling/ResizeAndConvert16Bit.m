[z,map] = imread('trees.tif');
[y,newmap] = imresize(z,map,1.5);
imshow(z,map);title('Original Index File');
figure, imshow(y,newmap); title('Double Index File');
tree = ind2rgb(y,newmap);
newBit = im2uint16(tree);
imwrite(newBit,'Dtree.tif');
imfinfo('Dtree.tif');