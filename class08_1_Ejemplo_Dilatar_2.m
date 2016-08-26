bw = imread('text.png');
se = strel('line',11,80);
bw2 = imdilate(bw,se);
imshow(bw), title('Original')
figure, imshow(bw2), title('Dilated')
I = imread('cameraman.tif');
se = strel('ball',5,5);
I2 = imdilate(I,se);
imshow(I), title('Original')
figure, imshow(I2), title('Dilated')