img = imread('grayrock.jpg');

bw = imbinarize(gray);         
bw = imcomplement(bw);         
bw = bwareaopen(bw, 50);       

figure, imshow(bw), title('Highlighted Rock Object');


