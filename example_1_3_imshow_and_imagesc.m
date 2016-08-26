B=rand(256).*1000;
imshow(B);

figure;
imagesc(B);
axis image;
axis off;
colormap(gray);
colorbar;

figure;
imagesc(B, [0 1000]);
axis image;
axis off;
colorbar;