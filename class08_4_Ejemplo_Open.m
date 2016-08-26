f = imread('images\shapes.tif');

se = strel('square', 20);
fo = imopen(f, se);

imshow(fo);