B=imread('cell.tif');

% imview(B);

D=imread('onion.png');

imtool(B);

B(25, 50)
B(25, 50) = 255;
imshow(B);

figure;
D(25, 50,:)
D(25, 50,1)
D(25, 50,:) = [255, 255, 255];
imshow(D);
