close all; clear all;

%I = imread('..\images\lena512color.tiff');
%I = imread('..\images\red_flag.png');
%I = imread('..\images\red_wallpaper.jpg');
%I = imread('peppers.png');
%I = rgb2gray(I);
%A = I;

A = imread('text.png');

R1 = A - bwmorph(A,'erode');

subplot(121); imshow(A), 
subplot(122); imshow(R1)

