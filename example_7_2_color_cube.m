% rgbcube
figure;
% Create plot3
plot3(R(:),G(:),B(:),'Marker','.','LineStyle','none');
box on;
hold all;
% Create xlabel
xlabel('R');
% Create ylabel
ylabel('G');
% Create zlabel
zlabel('B');