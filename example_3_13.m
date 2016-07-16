I = imread('..\images\coins.png');

[counts, bins] = imhist(I);
counts(60)

