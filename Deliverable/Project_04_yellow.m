close all; clear all;

se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);
seD = strel('disk', 5);

A = imread('image004.jpg');

R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);

tmp = imdilate(G, strel('disk', 10)) - imerode(R, strel('disk', 10)) - B;
tmp2 = imerode(G, strel('disk', 10)) - imdilate(R, strel('disk', 10)) - B;
mask = tmp - tmp2;

% edge_line = imdilate(edge(mask, 'Canny'), [se90 se0]);

% linea de perimetro
BWdfill = imfill(mask, 'holes');
BWnobord = imdilate(BWdfill, [se90 se0]);
BWfinal = imdilate(imerode(BWnobord, strel('square', 50)), strel('square', 50));
BWoutline = bwperim(BWfinal);

% hacer mas gruesa la linea de perimetro
BWoutline_tick = imdilate(BWoutline, [strel('line', 10, 10) strel('line', 10, 10)]);

% mostrar la linea de perimetro sobre la imagen original
Segout = A;
Segout(imdilate(BWoutline, strel('square', 5))) = 255;

% centro de masa
edge_line = edge(BWfinal, 'canny');
edge_filled = imfill(imdilate(edge_line, [seD seD]), 'holes');
edge_eroded = imerode(edge_filled, strel('disk', 60));

bw2 = imfill(edge_eroded, 'holes');
s = regionprops(bw2, 'centroid');
centroids = cat(1, s.Centroid);

figure;
% subplot(331);
image(A);title('Original');
figure;
% subplot(332);
image(R);colormap gray;axis off;title('Red');
figure;
% subplot(333);
image(G);colormap gray;axis off;title('Green');
figure;
% subplot(334);
image(B);colormap gray;axis off;title('Blue');
figure;
% subplot(334);
image(mask);colormap gray;axis off;title('Mask');
% figure;
% % subplot(334);
% image(BWfinal);colormap gray;axis off;title('BWfinal');
figure;
% subplot(335);
image(BWoutline_tick);colormap gray;axis off;title('Outline');

figure;
% subplot(336);
image(BWnobord);
hold(imgca,'on');
plot(imgca,centroids(:,1), centroids(:,2), 'r*');
hold(imgca,'off');title('Centroids');

figure;
% subplot(339);
image(Segout);
colormap gray;axis off;title('Outlined original image');

% figure;image(edge_eroded);
