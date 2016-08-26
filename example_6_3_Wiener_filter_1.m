close all; clear all;

I1 = imread('images\lena512color.tiff');
%I1 = imread('cameraman.tif'); % does not work
%I1 = imread('peppers.png');
I = rgb2gray(I1);

%I=imread('pout.tif');

LEN = 31; % length of blur
THETA = 11; % angle of blur
PSF = fspecial('motion',LEN,THETA); %create PSF
Blurred = imfilter(I,PSF,'circular','conv'); %blur

Difference = imabsdiff(I,Blurred); % difference
wnr1 = deconvwnr(Blurred,PSF);

subplot(1,4,1), imshow(I, []); %Display original image
subplot(1,4,2), imshow(Blurred, []); %Display original image with blurr
subplot(1,4,3), imshow(Difference, []); %Display difference in iamges
subplot(1,4,4), imshow(wnr1, []); %Display retored image
