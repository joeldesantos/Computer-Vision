close all; clear all;

I1 = imread('..\images\lena512color.tiff');
%I1 = imread('cameraman.tif'); % does not work
%I1 = imread('peppers.png');
I = rgb2gray(I1);

figure; imshow(I); title('Original Image');
LEN = 31; % length of blur
THETA = 11; % angle of blur
PSF = fspecial('motion',LEN,THETA); %create PSF
Blurred = imfilter(I,PSF,'circular','conv'); %blur
figure; imshow(Blurred);title('Blurred Image');

imshow(imabsdiff(I,Blurred)); % difference
luc1 = deconvlucy(Blurred,PSF,5);
figure;imshow(luc1);
title('Restored, True PSF');