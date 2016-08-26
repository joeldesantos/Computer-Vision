close all; clear all;

I1 = imread('images\lena512color.tiff');
%I1 = imread('cameraman.tif');
im1 = rgb2gray(I1);

square_size = 20;

Fim=(fft2(im1));
im=real(ifft2(Fim));
[m,n]=size(im1);
f=zeros(m,n);
f(-square_size + m * 0.5:square_size + m * 0.5, -square_size + n * 0.5:square_size + n * 0.5)=1;
F0=fft2(f);
S0=abs(F0);
 
Fil=abs(ifft2(Fim.*F0));

subplot(2,2,1); imshow(im1,[]); 
subplot(2,2,2); imshow(abs(Fim),[]);
subplot(2,2,3); imshow(f,[]);
subplot(2,2,4); imshow(Fil,[]);
