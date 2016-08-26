B=imread('cell.tif');
C=imread('spine.tif');
D=imread('onion.png');

subplot(3,1,1); imagesc(B); axis image; axis off; colormap(gray);
subplot(3,1,2); imagesc(C); axis image; axis off; colormap(jet);
subplot(3,1,3); imshow(D);
