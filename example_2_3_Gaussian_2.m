close all; clear all;
%A = imread('images\lena512color.tiff');
A = imread('cameraman.tif');
[rows dims] = size(A);
Abuild = zeros(size(A));

%Randomly  sample 1% of points only and  convolve with Gaussian PSF

sub = rand(rows .* dims, 1) < 0.01;
Abuild(sub) = A(sub); h = fspecial('gaussian', [10 10], 2);
B10 = filter2(h, Abuild);

subplot(1,2,1), imagesc(Abuild); axis image; axis off; colormap(gray); title('Object points');
subplot(1,2,2), imagesc(B10); axis image; axis off; colormap(gray); title('Response of LSI system');
