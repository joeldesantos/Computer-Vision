close all; clear all;

I1 = imread('images\lena512color.tiff');
%I1 = imread('cameraman.tif'); % does not work
%I1 = imread('peppers.png');
f = rgb2gray(I1);

J = imnoise(f,'salt & pepper',0.02);
K = medfilt2(J);

subplot(2,2,1); imshow(f,[]); 
subplot(2,2,2); imshow(J,[]); % this image will have a black border
%subplot(2,2,3); imshow(K,[]);
subplot(2,2,4); imshow(K,[]);
