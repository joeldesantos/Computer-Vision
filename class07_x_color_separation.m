clear;close all
im=imread('onion.png');
sz=size(im);
figure;imshow(im,[]);

for i=1:sz(1)
    for j=1:sz(2)
        if im(i,j,1)>100 & im(i,j,2)>100 & im(i,j,3)>100
            white(i,j)=1;
            green(i,j)=0;
            blue(i,j)=0;
            red(i,j)=0;
        elseif im(i,j,1)>200 & im(i,j,2)<90 & im(i,j,3)<90
            white(i,j)=0;
            green(i,j)=0;
            blue(i,j)=0;
            red(i,j)=1;
        elseif im(i,j,1)<80 & im(i,j,2)>50 & im(i,j,3)<80
            white(i,j)=0;
            green(i,j)=1;
            blue(i,j)=0;
            red(i,j)=0;
        elseif im(i,j,1)<100 & im(i,j,2)<100 & im(i,j,3)>150
            white(i,j)=0;
            green(i,j)=0;
            blue(i,j)=1;
            red(i,j)=0;
        else
            white(i,j)=0;
            green(i,j)=0;
            blue(i,j)=0;
            red(i,j)=0;
        end
    end
end

figure;imshow(white,[]);
figure;imshow(green);
figure;imshow(blue);
figure;imshow(red);