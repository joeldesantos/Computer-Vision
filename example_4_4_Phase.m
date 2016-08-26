RGB = double(imread('peppers.png','png'));
% Convert RGB to Gray Scale
im1 = .2989*RGB(:,:,1)+.5870*RGB(:,:,2)+.1140*RGB(:,:,3);

Fim=(fft2(im1));
im=abs(ifft2(Fim));
[m,n]=size(im1);
f=zeros(m,n);
f(56:71,48:79)=1;

F0=fft2(f); S0=abs(F0);

Fil=abs(ifft2(Fim.*F0));
subplot(2,2,1);
imshow(im1,[]);
subplot(2,2,2);
imshow(abs(Fim),[]);
subplot(2,2,3);
imshow(im,[ ]);
subplot(2,2,4);
imshow(Fil,[ ]);
