%I = imread('images\lena512color.tiff');
I = imread('cameraman.tif');

subplot(221), imshow(I);

Id = im2double(I);
Output1 = 4 * (((1 + 0.3) .^ (Id)) - 1);
Output2 = 4 * (((1 + 0.4) .^ (Id)) - 1);
Output3 = 4 * (((1 + 0.6) .^ (Id)) - 1);

subplot(222), imshow(Output1);
subplot(223), imshow(Output2);
subplot(224), imshow(Output3);
