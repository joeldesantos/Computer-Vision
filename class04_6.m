I1 = double(imread('cameraman.tif'));
chiles = imread('peppers.png')
RGB = double(imread('peppers.png'));
I2 = .2989*RGB(:,:,1)+.5870*RGB(:,:,2)+.1140*RGB(:,:,3);
I2 = I2(1:256,1:256);
fftI1=(fft2(I1));
afI1=abs(fftI1);
phase=angle(fftI1);
D=afI1.*exp(i*phase);
E=ifft2(D);

fftI2 = fft2(I2);
afI2 = abs(fftI2);
phase2 = angle(fftI2);
F = afI1.*exp(i*phase2);
G = ifft2(F);

subplot(3,1,1); imshow(E, []);
subplot(3,1,2); imshow(chiles);
subplot(3,1,3); imshow(G, []);
