close all; clear all;
I1 = imread('images\lena512color.tiff');
% my_img = imread('images\lena512color.tiff');
% I = rgb2gray(my_img);
I2 = rgb2gray(I1);
subplot(2,2,1), imshow(I2); axis off; colormap gray;

[x, y] = meshgrid(-15:15);
sigma = 7;
G1 = (1 / (2 * pi * sigma ^ 2)) * exp (-(x.^2 / sigma ^ 2 + y .^ 2 / sigma ^ 2) / 2);
subplot(2,2,2), imshow(G1); axis off; colormap gray;
%figure; imagesc(G1);

R = conv2(I2, G1);
subplot(2,2,3), imshow(R); axis off; colormap gray;
%R2 = R(1:512, 1:512);
%R3 = I2 - R2;

%subplot(2,2,3), imshow(R); axis off; colormap gray;
%subplot(2,2,4), imshow(R3); axis off;
