close all; clear all;

%I = imread('..\images\lena512color.tiff');
%I = imread('..\images\red_flag.png');
%I = imread('..\images\red_wallpaper.jpg');
%I = imread('peppers.png');
%I = rgb2gray(I);
%I = imread('cameraman.tif');
I = imread('text.png');
%I=double(imread('profundidad_1.png'));

w=[-1 -1 -1;-1 8 -1;-1 -1 -1];
g=abs(imfilter(I,w));
imagesc(g);
T=max(g(:));
g2=g>=T;
%imagesc(g2);
[x,y] = find(g>=T);

%subplot(121); imshow(A);
%subplot(122); imshow(R1);
plot(x, y, '.');

