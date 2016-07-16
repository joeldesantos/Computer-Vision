I1 = imread('..\images\coins.png');
% I1 = imread('..\images\lena512color.tiff')
level = graythresh(I1);
It = im2bw(I, level);
imshow(It);
