% Read the indexed image and the colormap
[imageData, map] = imread('trees.tif');

% Display the image
imshow(imageData, map);

% Add title
title('Indexed Image: trees.tif')
%% 
[red,cmap] = imread('trees.tif');
imshow(red,cmap)
uiwait(msgbox('Mark the red leaves in the river'));
[x,y] = ginput(2);
% Prevent image from being blown away.
hold on;
plot(x,y,'rx', 'MarkerSize', 30);
%% 

[z,map] = imread('trees.tif');
[y,newmap] = imresize(z,map,1.5);
imshow(z,map);title('Original Index File');
figure, imshow(y,newmap); title('Double Index File');
tree = ind2rgb(y,newmap);
newBit = im2uint16(tree);
imwrite(newBit,'Dtree.tif');
imfinfo('Dtree.tif');
