I1 = imread('images\lena512color.tiff');

I2 = rgb2gray(I1);
I3 = im2bw(I2, 0.3);
I4 = im2bw(I2, 0.9);
figure;
subplot(221), imshow(I1);
subplot(222), imshow(I2);
subplot(223), imshow(I3);
subplot(224), imshow(I4);
