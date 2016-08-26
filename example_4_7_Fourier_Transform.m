A = imread('cameraman.tif');
FT = fft2(A);
FT_centered = fftshift(FT);

[xd, yd] = size(A);
% x = ones(xd/2);
% y = ones(yd/2);
x = [xd ./ 2 : xd ./ 2] - 1;
y = [yd ./ 2 : yd ./ 2] - 1;

[X, Y] = meshgrid(x, y);
sigma = 32;
arg = (X .^ 2 + Y .^ 2) ./ sigma .^ 2;
frqfilt = exp(-arg);
imfilt1 = abs(ifft2(frqfilt .* FT));
imfilt2 = abs(ifft2(frqfilt .* FT_centered));

subplot(2,3,1), imshow(A);
subplot(2,3,2), imshow(log(1 + abs(FT)), []);
subplot(2,3,3), imshow(log(1 + abs(FT_centered)), []);

subplot(2,3,4), imshow(A);
subplot(2,3,5), imshow(imfilt1);
subplot(2,3,6), imshow(imfilt2);
