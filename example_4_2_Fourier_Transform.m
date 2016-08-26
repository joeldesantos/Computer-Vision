% Script file: fourier.m - 2D Fourier Transform
% Pictures on P.113 of Gonzalez, Woods, Eddins
m=128; n=128;
f=zeros(m,n);
f(56:71,48:79)=255;
F0=fft2(f); S0=abs(F0);
Fc=fftshift(fft2(f)); Sc=abs(Fc);
Fd=fft2(fftshift(f)); Sd=log(1+abs(Fc));
subplot(2,2,1);
imshow(f,[]);
subplot(2,2,2);
imshow(S0,[]);
subplot(2,2,3);
imshow(Sc,[ ]);
subplot(2,2,4);
imshow(Sd,[ ]);
