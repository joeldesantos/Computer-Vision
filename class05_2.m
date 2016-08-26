close all; clear all;

%I1 = imread('images\lena512color.tiff');
%I1 = imread('cameraman.tif'); % does not work
I1 = imread('peppers.png');
f = rgb2gray(I1);

square_size = 20;

PQ = paddedsize(size(f));
F = fft2(f, PQ(1), PQ(2));
%F = fft2(f, 512, 512);
fmi = real(ifft2(F));

%use the paddedsize
m=PQ(1);
n=PQ(2);
H=zeros(m,n);
H2=ones(m,n);
H(-square_size + m * 0.5:square_size + m * 0.5, -square_size + n * 0.5:square_size + n * 0.5) = 1;
Hh = H2 - H; Hf = fftshift(Hh); % High pass
%Hf = H; % low pass

G = F .* Hf;
g = real(ifft2(G));

%crop to original image size
g = g(1:size(f, 1), 1:size(f, 2));

subplot(2,2,1); imshow(f,[]); 
subplot(2,2,2); imshow(abs(fmi),[]); % this image will have a black border
subplot(2,2,3); imshow(Hf,[]);
subplot(2,2,4); imshow(g,[]);
