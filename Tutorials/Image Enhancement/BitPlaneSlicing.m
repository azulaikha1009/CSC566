img = imread('cameraman.tif');
figure;
for i = 1:8
    bitPlane = bitget(img, i);
    subplot(2,4,i);
    imshow(logical(bitPlane));
    title(['Bit Plane ', num2str(i)]);
end
