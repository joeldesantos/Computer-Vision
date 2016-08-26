close all; clear all;

I  = imread('circuit.tif');
figure; imshow(I);
BW = edge(imrotate(I,50,'crop'),'canny');
imshow(BW);
[H,T,R] = hough(BW);
P  = houghpeaks(H,2);
figure; imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
plot(T(P(:,2)),R(P(:,1)),'s','color','white');
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure, imshow(BW), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
 len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end
 plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');
 