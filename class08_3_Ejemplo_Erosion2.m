originalBW = imread('circles.png');  
se = strel('disk',11);        
erodedBW = imerode(originalBW,se);
imshow(originalBW), figure, imshow(erodedBW)

I = imread('cameraman.tif');
se = strel('ball',5,5);
I2 = imerode(I,se);
imshow(I), title('Original')
figure, imshow(I2), title('Eroded')