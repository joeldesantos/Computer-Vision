close all; clear all;

se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);
seD = strel('disk', 5);

A = imread('image001.jpg');
% A = imread('image002.jpg');
% A = imread('image003.jpg');

R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);

mask = R - imdilate(G, seD);
mask = mask - imerode(B, seD);

% edge_line = edge(mask, 'Canny');

% linea de perimetro
BWdfill = imfill(mask, 'holes');
BWnobord = imdilate(BWdfill, [se90 se0]);
BWfinal = imerode(BWnobord, seD);
BWoutline = bwperim(BWfinal);

% hacer mas gruesa la linea de perimetro
BWoutline_tick = imdilate(BWoutline, [strel('line', 10, 10) strel('line', 10, 10)]);

% mostrar la linea de perimetro sobre la imagen original
Segout = A;
Segout(BWoutline_tick) = 255;

% centro de masa
edge_line = edge(BWnobord, 'canny');
edge_filled = imfill(imdilate(edge_line, [seD seD]), 'holes');
edge_eroded = imerode(edge_filled, strel('disk', 60));

bw2 = imfill(edge_eroded,'holes');
s  = regionprops(bw2, 'centroid');
centroids = cat(1, s.Centroid);

% figure;
% % subplot(331);
% image(A);title('Original');
figure;
% subplot(332);
image(R);colormap gray;axis off;title('Red');
figure;
% subplot(333);
image(G);colormap gray;axis off;title('Green');
figure;
% subplot(334);
image(mask);colormap gray;axis off;title('Mask');
figure;
% subplot(335);
image(BWoutline_tick);colormap gray;axis off;title('Outline');

% figure;
% % subplot(336);
% image(BWnobord);
% hold(imgca,'on');
% plot(imgca,centroids(:,1), centroids(:,2), 'r*');
% hold(imgca,'off');title('Centroids');
% 
% figure;
% % subplot(339);
% image(Segout);
% colormap gray;axis off;title('Outlined original image');

% figure;image(edge_eroded);
