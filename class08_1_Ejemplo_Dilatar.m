A = imread('text.png');
B=[0 1 0;1 1 1;0 1 0 ];
A2=imdilate(A,B);
imshow(A2);
%Where  A is the image  and  B it the SE

