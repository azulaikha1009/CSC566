i=imread('Spine.jpg'); imshow(i);
j = imadjust(i, [ ], [ ], 0.6);
figure, imshow(j);