I = imread('images\coins.png');
% my_img = imread('images\lena512color.tiff');
% I = rgb2gray(my_img);
Im = imfilter(I, fspecial('average', [15 15]), 'replicate');
It = I - (Im + 20);

Ibw = im2bw(It, 0);

subplot(1,2,1), imshow(I);
subplot(1,2,2), imshow(Ibw);
