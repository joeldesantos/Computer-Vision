clear, close all
I = imread('rice.png');
imshow(I)
background = imopen(I, strel('disk', 15));
imshow(background)
I2 = imsubtract(I, background);
figure, imshow(I2)
I3 = imadjust(I2, stretchlim(I2), [0 1]);
figure, imshow(I3)
level = graythresh(I3);
bw = im2bw(I3, level);
figure, imshow(bw)
[labeled, numObjects] = bwlabel(bw, 4);
granosDEarroz=numObjects;
imshow(labeled,[ ])
graindata = regionprops(labeled, 'basic')
%n es el n?mero grano de arroz en la imagen
n=10;
graindata(n).Area
graindata(n).BoundingBox
graindata(n).Centroid