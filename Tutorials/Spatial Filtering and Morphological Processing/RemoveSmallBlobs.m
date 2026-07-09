% Load the image
I_blobs = imread('Blob.jpg');
% Check if the image is RGB and convert to grayscale if necessary
if size(I_blobs, 3) == 3
I_gray = rgb2gray(I_blobs);
else
% If the image is already grayscale, use it directly
I_gray = I_blobs;
end
% Display the grayscale image to verify
figure;
imshow(I_gray);
title('Grayscale Image');
% Binarize the image using a suitable threshold
threshold = graythresh(I_gray);
BW = imbinarize(I_gray, threshold);
% Remove small blobs using bwareaopen
min_blob_area = 500; % Define the minimum area of blobs to be removed
BW_cleaned = bwareaopen(BW, min_blob_area);
% Display the original and cleaned images
figure;
subplot(1, 2, 1);
imshow(I_blobs);
title('Original Image');
subplot(1, 2, 2);
imshow(BW_cleaned);
title('Image with Small Blobs Removed');