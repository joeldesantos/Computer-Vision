BW = imread('circles.png');
originalBW = imread('text.png');
R=and(BW,originalBW);
figure;
subplot(141); imshow(BW);
subplot(142); imshow(not(BW));
subplot(144); imshow(R);