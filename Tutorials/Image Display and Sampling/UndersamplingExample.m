% undersampling
i = imread ('pout.tif'); imshow(i);
[row,col,dim]=size(i);
s = 4; %sampling factor
undersampled=i([1:s:row],[1:s:col],[1:1:dim]);
figure, imshow(undersampled);