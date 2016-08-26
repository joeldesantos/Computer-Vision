A = imread('cameraman.tif');

subplot(1, 2, 1); imshow(A);

B = imadd(A, 100);

subplot(1, 2, 2); imshow(B);
