clear, close all
I = imread('rice.png'); %tif
imshow(I);
background = imopen(I, strel('disk', 15));
imshow(background);
I2 = imsubtract(I, background);
figure, imshow(I2);