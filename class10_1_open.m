close all; clear all;

%I = imread('..\images\lena512color.tiff');
%I = imread('..\images\red_flag.png');
%I = imread('..\images\red_wallpaper.jpg');
%I = imread('peppers.png');
%I = rgb2gray(I);
%A = I;

A = imread('text.png');

B = ones(3);
R1=imopen(A,B);
R2=bwmorph(A,'open');
subplot(131); imshow(A), 
subplot(132); imshow(R1)
subplot(133); imshow(R2)

