I = imread('coins.png');
figure, imshow(I)
bw = im2bw(I, graythresh(getimage));
figure, imshow(bw)
bw2 = imfill(bw,'holes');
s = regionprops(bw2, 'centroid');
centroids = cat(1, s.Centroid);
imshow(I)
hold(imgca,'on')
plot(imgca,centroids(:,1), centroids(:,2), 'r*')
hold(imgca,'off')