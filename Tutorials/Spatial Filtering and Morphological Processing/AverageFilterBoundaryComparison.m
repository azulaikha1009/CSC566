% Load the image
I = imread('pattern.tif');
% Convert to grayscale if it's not already
if size(I, 3) == 3
I = rgb2gray(I);
end
% Convert image to double for filtering
I = double(I);
% Create an average filter
H = fspecial('average', [3, 3]);
% Define different boundary options
boundary_options = {'replicate', 'symmetric', 'circular', 'zeros'};
% Apply the filter with different boundary options and display the results
figure;
for i = 1:numel(boundary_options)
try
% Apply filter with the current boundary option
J = imfilter(I, H, boundary_options{i});
% Display the filtered image
subplot(2, 2, i);
imshow(J, []);
title(['Boundary Option: ', boundary_options{i}]);
catch ME
disp(['Error with boundary option: ', boundary_options{i}]);
disp(ME.message);
end
end
