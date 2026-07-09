% Read the noisy images 
noisy_img1 = imread('Noisy 1.jpg'); 
noisy_img2 = imread('Noisy 2.jpg');  
% Convert to grayscale if images are RGB 
if size(noisy_img1, 3) == 3     
    noisy_img1 = rgb2gray(noisy_img1); 
end  
if size(noisy_img2, 3) == 3     
    noisy_img2 = rgb2gray(noisy_img2); 
end  
% Remove noise using median filtering 
denoised_img1 = medfilt2(noisy_img1); 
denoised_img2 = medfilt2(noisy_img2);  
% Display the original and denoised images figure;  
subplot(2, 2, 1); imshow(noisy_img1); 
title('Noisy Image 1');  subplot(2, 2, 2); 
imshow(denoised_img1); 
title('Denoised Image 1');  
subplot(2, 2, 3); imshow(noisy_img2); 
title('Noisy Image 2');  
subplot(2, 2, 4); 
imshow(denoised_img2); 
title('Denoised Image 2');