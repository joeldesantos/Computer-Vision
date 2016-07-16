%I = imread('..\images\lena512color.tiff')
I = imread('cameraman.tif')

subplot(221), imshow(I);

Id = im2double(I);
Output1 = 2 * log(1 + Id);
Output2 = 3 * log(1 + Id);
Output3 = 5 * log(1 + Id);

subplot(222), imshow(Output1);
subplot(223), imshow(Output2);
subplot(224), imshow(Output3);
