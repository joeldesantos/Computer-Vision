close all; clear all;

%I1 = imread('images\lena512color.tiff');
%I1 = imread('cameraman.tif'); % does not work
%I1 = imread('peppers.png');
%f = rgb2gray(I1);

A=imread('pout.tif'); B=fft2(A); B=fftshift(B); %Read in image and take FT
[x y]=size(A); [X Y]=meshgrid(1:x,1:y); %Construct Gaussian PSF
h=exp(-(X-x/2).^2./48).*exp(-(Y-y/2).^2./48); %extending over entire array
H=psf2otf(h,size(h)); H=fftshift(H); %Get OTF corresponding to PSF
g=ifft2(B.*H'); g=abs(g); %generate blurred image via %Fourier domain

G=fft2(g); G=fftshift(G'); %Take FT of image
indices=find(H>1e-6); %Do inverse filtering AVOIDING
F=zeros(size(G)); F(indices)=G(indices)./H(indices); %small values in OTF !!
f=ifft2(F'); f=abs(f); %Inverse FT to get filtered image

subplot(1,4,1), imshow(g,[min(min(g)) max(max(g))]); %Display ìoriginalî blurred image
subplot(1,4,2), imagesc(h); axis square; axis off; %Display PSF
subplot(1,4,3), imagesc(abs(H)); axis square; axis off; %Display MTF
subplot(1,4,4), imagesc(f); axis square; axis tight; axis off; %Display filtered image

