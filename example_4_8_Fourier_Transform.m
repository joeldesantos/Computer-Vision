f = imread('cameraman.tif');
[M, N] = size(f);
F = fft2(f);
sig = 10;
H = lpfilter('gaussian', M, N, sig);
G = H.*F;
g = real(ifft2(G));
imshow(g, []);