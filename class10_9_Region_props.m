close all; clear all;

I = imread('coins.png'); %Read in original
subplot(2,2,1), imshow(I); %Display original
subplot(2,2,2),im2bw(I,0.35); %Result of manual threshold
[counts,X]=imhist(I); %Calculate image hIstogram
P = polyfit(X,counts,6); Y=polyval(P,X); %Fit to histogram and evaluate
[V,ind]=sort(abs(diff(Y))); thresh=ind(3)./255; %Find minimum of polynomial
subplot(2,2,3), im2bw(I,thresh); %Result of Polynomial theshold
level= graythresh(I); %Find threshold
subplot(2,2,4), im2bw(I,level); %Result of Otsu's method
figure; plot(X,counts); hold on, plot(X,Y,'r'); %Histogram and polynomial fit

