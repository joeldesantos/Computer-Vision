close all; clear all;

%generate the picture
f=zeros(128,128);
f(32:96,32:96)=255;

%find edges
sigma=1;
[g3, t3]=edge(f, 'canny', [0.04 0.10], sigma);

%Do the Hough transform
[H t r] = hough(g3); %r and c store column labels...

%Display the transform in such a way that we can draw points on it later...
imshow(H, [], 'XData', t, 'YData', r );

%Add axis labels to the picture
xlabel('\theta'), ylabel('\rho');
axis on, axis normal;