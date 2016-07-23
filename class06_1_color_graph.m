close all; clear all;

%I = imread('..\images\lena512color.tiff');
I = imread('peppers.png');

R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);

x = R(:);
y = G(:);
z = B(:);

plot3(x,y,z, '.');
