close all; clear all;

I = imread('images\lena512color.tiff');
%I = imread('images\red_flag.png');
%I = imread('images\red_wallpaper.jpg');
%I = imread('peppers.png');

[so(1) so(2) thirdD] = size(I);

R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);

x = R(:);
y = G(:);
z = B(:);

%u = [[0.299, 0.587, 0.114], [0.596, -0.274, -0.322], [0.211, -0.523, 0.312]] .* [x y z]
R = [0.299, 0.587, 0.114; 0.596, -0.274, -0.322; 0.211, -0.523, 0.312]
Z = reshape(reshape(I,so(1)*so(2),thirdD)/R',so(1),so(2),thirdD);
%rgb2ntsc
T = [1.0 0.956 0.621; 1.0 -0.272 -0.647; 1.0 -1.106 1.703].';


%plot3(x,y,z, '.');
%plot3(Y,I,Q, '.');
