close all; clear all;

%A = imread('images\lena512color.tiff');
A = imread('onion.png');

R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3); 

figure;
subplot(221);image(A);colormap gray;axis off;axis image;title('Original')
subplot(222);image(R);colormap gray;axis off;axis image;title('Red')
subplot(223);image(G);colormap gray;axis off;axis image;title('Green')
subplot(224);image(B);colormap gray;axis off;axis image;title('Blue')