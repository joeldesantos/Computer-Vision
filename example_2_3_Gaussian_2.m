close all; clear all;
%A = imread('..\images\lena512color.tiff');
A = imread('cameraman.tif');
[rows dims] = size(A);
Abuild = zeros(size(A));

%Randomly  sample 1% of points only and  convolve with Gaussian PSF

sub = rand(rows.*dim, 1)<0.01;
Abuild(sub) = 

PSF = fspecial('gaussian', [5 5], 2);
h = fspecial('motion', 10, 45);
B = conv2(PSF, A);
C = imfilter(A, h, 'replicate');
D = conv2(A, A);
subplot(2,2,1), imshow(A);
subplot(2,2,2), imshow(B, []);
subplot(2,2,3), imshow(C, []);
subplot(2,2,4), imshow(D, []);
