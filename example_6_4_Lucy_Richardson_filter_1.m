close all; clear all;

f = zeros(101,101);
f(1,1) = 1;
H = hough(f);
imshow(H,[])
f(101,1) = 1;
H = hough(f);
imshow(H,[])
f(1,101) = 1;
H = hough(f);
imshow(H,[])
f(101,101) = 1;
H = hough(f);
imshow(H,[])
f(51,51) = 1;

