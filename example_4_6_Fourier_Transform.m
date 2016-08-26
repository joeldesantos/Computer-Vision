degrees = 0; % "direction" of cosine
P = 30; % period of cosine
M = 128; % dimensions of image (MxM)
%Initialize colormap
mcomp = 0 : 1.0 ./ 255 : 1.0; % output colors lie in [0,1]
map = [mcomp' mcomp' mcomp'];
index = (0:1:M-1); x = ones(M,1)*index;
y = x(:,end:-1:1)'; theta = pi*degrees/180;
rho = 1/P; u_0 = rho*cos(theta); v_0 = rho*sin(theta);
g = 0.5 + 0.5*cos(2*pi*(u_0*x + v_0*y));
figure(1); image(g*255); colormap(map);
axis('off');axis('image');
title('g(x,y)=0.5(1+cos(u_0x+v_0y))');
g = fftshift(g);
G = fft2(g);
G = fftshift(G);
Gmag = abs(G);
Gmax = max(max(Gmag));
figure(2);
image(Gmag*255/Gmax);
colormap(map);
axis('off');
axis('image');
title('|G(u,v)|');
