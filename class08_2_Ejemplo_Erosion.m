originalBW = imread('text.png');  
%se = strel('disk',2); %Structure element        
%se = strel('line',5,0); %Structure element        
%se = strel('square',3); %Structure element        
%se=[1 0 0;0 1 0; 0 0 0];
erodedBW = imerode(originalBW,se);
 
subplot(121);imshow(originalBW), 
subplot(122); imshow(erodedBW)
